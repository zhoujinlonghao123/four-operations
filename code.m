clear
clc
n=30;
Str=[];
while n>0
a=randi([0 100]);
b=randi([0 100]);
c=randi([0 100]);
x='+-¡Á¡Â';%alt 247 215
op='+-*/';
 s1=randi([1 4]);
 s2=randi([1 4]);
d=eval(['a' op(s1) 'b' op(s2) 'c']);
str=[a,b,c,s1,s2];
flag1=~isempty(strfind(Str,str))%ÊÇ·ñ·Ç¿Õ£¨falg1==1·Ç¿Õ£©
flag2=logical(abs(d)>=100)
if flag1|| flag2
    continue;
end
Str=[Str,str];
fp=fopen('zhou.text','a');
fprintf(fp,'%3d%3c%3d%3c%3d = \n',a,x(s1),b,x(s2),c);
fclose(fp);
fp=fopen('king.text','a');
fprintf(fp,'%3d%3c%3d%3c%3d = %.3f\n',a,x(s1),b,x(s2),c,d);
fclose(fp);
n=n-1;
end


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 int ADDRLEN ;
 int hex_to_bin (char) ;
 int memset (int*,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int parse_addr(char *in_str, UCHAR *out)
{
 int len;
 int i, j, k;
 int status;

 if (in_str == ((void*)0))
  return 0;
 if ((len = strlen(in_str)) < 2)
  return 0;
 memset(out, 0, ADDRLEN);

 status = 1;
 j = len - 1;
 if (j > 12)
  j = 12;
 i = 5;

 while (j > 0) {
  if ((k = hex_to_bin(in_str[j--])) != -1)
   out[i] = k;
  else
   return 0;

  if (j == 0)
   break;
  if ((k = hex_to_bin(in_str[j--])) != -1)
   out[i] += k << 4;
  else
   return 0;
  if (!i--)
   break;
 }
 return status;
}

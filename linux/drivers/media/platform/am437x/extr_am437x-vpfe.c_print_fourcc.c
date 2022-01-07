
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static char *print_fourcc(u32 fmt)
{
 static char code[5];

 code[0] = (unsigned char)(fmt & 0xff);
 code[1] = (unsigned char)((fmt >> 8) & 0xff);
 code[2] = (unsigned char)((fmt >> 16) & 0xff);
 code[3] = (unsigned char)((fmt >> 24) & 0xff);
 code[4] = '\0';

 return code;
}

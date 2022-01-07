
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int isascii (char) ;
 int isprint (char) ;
 int snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static int snprint_line(char *buf, size_t count,
   const u8 * data, u32 len, u32 ofs)
{
 int out, i, j, l;
 char c;

 out = snprintf(buf, count, "%08X", ofs);

 for (l = 0, i = 0; i < 2; i++) {
  out += snprintf(buf + out, count - out, " ");
  for (j = 0; j < 8 && l < len; j++, l++)
   out += snprintf(buf + out, count - out, "%02X ",
     data[(i * 8 + j)]);
  for (; j < 8; j++)
   out += snprintf(buf + out, count - out, "   ");
 }

 out += snprintf(buf + out, count - out, " ");
 for (l = 0, i = 0; i < 2; i++) {
  out += snprintf(buf + out, count - out, " ");
  for (j = 0; j < 8 && l < len; j++, l++) {
   c = data[(i * 8 + j)];
   if (!isascii(c) || !isprint(c))
    c = '.';

   out += snprintf(buf + out, count - out, "%c", c);
  }

  for (; j < 8; j++)
   out += snprintf(buf + out, count - out, " ");
 }

 return out;
}

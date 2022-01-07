
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,unsigned int,...) ;

__attribute__((used)) static char *unit_conv(char *buf, size_t len, unsigned int val,
         unsigned int factor)
{
 unsigned int rem = val % factor;

 if (rem == 0) {
  snprintf(buf, len, "%u", val / factor);
 } else {
  while (rem % 10 == 0)
   rem /= 10;
  snprintf(buf, len, "%u.%u", val / factor, rem);
 }
 return buf;
}

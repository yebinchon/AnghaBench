
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;



__attribute__((used)) static unsigned int sfp_check(void *buf, size_t len)
{
 u8 *p, check;

 for (p = buf, check = 0; len; p++, len--)
  check += *p;

 return check;
}

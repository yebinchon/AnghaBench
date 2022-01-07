
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u_long ;



__attribute__((used)) static int div_ratio(u_long upper, u_long lower)
{
 if ((upper<<16L) < upper)
  upper = 0xffff0000L ;
 else
  upper <<= 16L ;
 if (!lower)
  return 0;
 return (int)(upper/lower) ;
}

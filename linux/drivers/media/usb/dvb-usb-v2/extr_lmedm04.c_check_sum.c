
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 check_sum(u8 *p, u8 len)
{
 u8 sum = 0;
 while (len--)
  sum += *p++;
 return sum;
}

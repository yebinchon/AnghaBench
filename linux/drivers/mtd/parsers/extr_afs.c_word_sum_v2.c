
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 word_sum_v2(u32 *p, u32 num)
{
 u32 sum = 0;
 int i;

 for (i = 0; i < num; i++) {
  u32 val;

  val = p[i];
  if (val > ~sum)
   sum++;
  sum += val;
 }
 return ~sum;
}

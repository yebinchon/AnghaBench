
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 clock_divider(unsigned long src_rate, unsigned long rate)
{
 u32 div;

 div = (src_rate / rate);
 if (div == 0)
  return 1;
 if (rate < (src_rate / div))
  div++;
 return div;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int*) ;
 int* prox_rates_hz ;

__attribute__((used)) static int bh1770_prox_rate_validate(int rate)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(prox_rates_hz) - 1; i++)
  if (rate >= prox_rates_hz[i])
   break;
 return i;
}

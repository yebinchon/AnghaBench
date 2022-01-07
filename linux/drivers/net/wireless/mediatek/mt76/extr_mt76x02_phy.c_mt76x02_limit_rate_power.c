
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_rate_power {int* all; } ;



void mt76x02_limit_rate_power(struct mt76_rate_power *r, int limit)
{
 int i;

 for (i = 0; i < sizeof(r->all); i++)
  if (r->all[i] > limit)
   r->all[i] = limit;
}

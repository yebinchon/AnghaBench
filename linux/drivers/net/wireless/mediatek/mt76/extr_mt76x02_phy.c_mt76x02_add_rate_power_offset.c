
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_rate_power {int* all; } ;



void mt76x02_add_rate_power_offset(struct mt76_rate_power *r, int offset)
{
 int i;

 for (i = 0; i < sizeof(r->all); i++)
  r->all[i] += offset;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_rate_power {int * all; } ;
typedef int s8 ;


 int max (int,int ) ;

int mt76x02_get_max_rate_power(struct mt76_rate_power *r)
{
 s8 ret = 0;
 int i;

 for (i = 0; i < sizeof(r->all); i++)
  ret = max(ret, r->all[i]);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ieee_ets {int dummy; } ;


 int cxgb4_ieee_read_ets (struct net_device*,struct ieee_ets*,int) ;

__attribute__((used)) static int cxgb4_ieee_get_ets(struct net_device *dev, struct ieee_ets *ets)
{
 return cxgb4_ieee_read_ets(dev, ets, 1);
}

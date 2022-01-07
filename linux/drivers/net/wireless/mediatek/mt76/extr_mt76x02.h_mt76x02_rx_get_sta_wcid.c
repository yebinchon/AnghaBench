
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mt76_wcid {int dummy; } ;
struct mt76x02_sta {TYPE_1__* vif; struct mt76_wcid wcid; } ;
struct TYPE_2__ {struct mt76_wcid group_wcid; } ;



__attribute__((used)) static inline struct mt76_wcid *
mt76x02_rx_get_sta_wcid(struct mt76x02_sta *sta, bool unicast)
{
 if (!sta)
  return ((void*)0);

 if (unicast)
  return &sta->wcid;
 else
  return &sta->vif->group_wcid;
}

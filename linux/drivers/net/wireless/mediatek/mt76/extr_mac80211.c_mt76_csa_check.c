
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt76_dev {int hw; } ;


 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int __mt76_csa_check ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct mt76_dev*) ;

void mt76_csa_check(struct mt76_dev *dev)
{
 ieee80211_iterate_active_interfaces_atomic(dev->hw,
  IEEE80211_IFACE_ITER_RESUME_ALL,
  __mt76_csa_check, dev);
}

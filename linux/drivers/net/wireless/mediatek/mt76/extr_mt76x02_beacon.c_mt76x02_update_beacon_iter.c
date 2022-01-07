
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct mt76x02_vif {int idx; } ;
struct TYPE_2__ {int beacon_mask; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;


 int BIT (int ) ;
 struct sk_buff* ieee80211_beacon_get (int ,struct ieee80211_vif*) ;
 int mt76_hw (struct mt76x02_dev*) ;
 int mt76x02_mac_set_beacon (struct mt76x02_dev*,int ,struct sk_buff*) ;

void
mt76x02_update_beacon_iter(void *priv, u8 *mac, struct ieee80211_vif *vif)
{
 struct mt76x02_dev *dev = (struct mt76x02_dev *)priv;
 struct mt76x02_vif *mvif = (struct mt76x02_vif *)vif->drv_priv;
 struct sk_buff *skb = ((void*)0);

 if (!(dev->mt76.beacon_mask & BIT(mvif->idx)))
  return;

 skb = ieee80211_beacon_get(mt76_hw(dev), vif);
 if (!skb)
  return;

 mt76x02_mac_set_beacon(dev, mvif->idx, skb);
}

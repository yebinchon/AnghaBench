
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct mt76x02_vif {size_t idx; } ;
struct TYPE_3__ {int beacon_mask; } ;
struct mt76x02_dev {TYPE_1__ mt76; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct TYPE_4__ {struct ieee80211_vif* vif; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ control; } ;
struct beacon_bc_data {struct sk_buff** tail; int q; struct mt76x02_dev* dev; } ;


 int BIT (size_t) ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_ASSIGN_SEQ ;
 int __skb_queue_tail (int *,struct sk_buff*) ;
 struct sk_buff* ieee80211_get_buffered_bc (int ,struct ieee80211_vif*) ;
 int mt76_hw (struct mt76x02_dev*) ;
 int mt76_skb_set_moredata (struct sk_buff*,int) ;

__attribute__((used)) static void
mt76x02_add_buffered_bc(void *priv, u8 *mac, struct ieee80211_vif *vif)
{
 struct beacon_bc_data *data = priv;
 struct mt76x02_dev *dev = data->dev;
 struct mt76x02_vif *mvif = (struct mt76x02_vif *)vif->drv_priv;
 struct ieee80211_tx_info *info;
 struct sk_buff *skb;

 if (!(dev->mt76.beacon_mask & BIT(mvif->idx)))
  return;

 skb = ieee80211_get_buffered_bc(mt76_hw(dev), vif);
 if (!skb)
  return;

 info = IEEE80211_SKB_CB(skb);
 info->control.vif = vif;
 info->flags |= IEEE80211_TX_CTL_ASSIGN_SEQ;
 mt76_skb_set_moredata(skb, 1);
 __skb_queue_tail(&data->q, skb);
 data->tail[mvif->idx] = skb;
}

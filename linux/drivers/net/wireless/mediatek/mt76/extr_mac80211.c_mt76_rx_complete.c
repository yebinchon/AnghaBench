
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
struct mt76_dev {int rx_lock; int hw; } ;
struct ieee80211_sta {int dummy; } ;


 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int ieee80211_rx_napi (int ,struct ieee80211_sta*,struct sk_buff*,struct napi_struct*) ;
 scalar_t__ mt76_check_ccmp_pn (struct sk_buff*) ;
 struct ieee80211_sta* mt76_rx_convert (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void mt76_rx_complete(struct mt76_dev *dev, struct sk_buff_head *frames,
        struct napi_struct *napi)
{
 struct ieee80211_sta *sta;
 struct sk_buff *skb;

 spin_lock(&dev->rx_lock);
 while ((skb = __skb_dequeue(frames)) != ((void*)0)) {
  if (mt76_check_ccmp_pn(skb)) {
   dev_kfree_skb(skb);
   continue;
  }

  sta = mt76_rx_convert(skb);
  ieee80211_rx_napi(dev->hw, sta, skb, napi);
 }
 spin_unlock(&dev->rx_lock);
}

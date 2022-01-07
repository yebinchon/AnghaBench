
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; size_t queue_mapping; } ;
struct ieee80211_tx_control {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct b43_wl {int hw; int tx_work; int * tx_queue_stopped; int * tx_queue; } ;
struct TYPE_2__ {int nr_frags; } ;


 int B43_WARN_ON (int ) ;
 struct b43_wl* hw_to_b43_wl (struct ieee80211_hw*) ;
 int ieee80211_free_txskb (struct ieee80211_hw*,struct sk_buff*) ;
 int ieee80211_queue_work (int ,int *) ;
 int ieee80211_stop_queue (int ,size_t) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void b43_op_tx(struct ieee80211_hw *hw,
        struct ieee80211_tx_control *control,
        struct sk_buff *skb)
{
 struct b43_wl *wl = hw_to_b43_wl(hw);

 if (unlikely(skb->len < 2 + 2 + 6)) {

  ieee80211_free_txskb(hw, skb);
  return;
 }
 B43_WARN_ON(skb_shinfo(skb)->nr_frags);

 skb_queue_tail(&wl->tx_queue[skb->queue_mapping], skb);
 if (!wl->tx_queue_stopped[skb->queue_mapping]) {
  ieee80211_queue_work(wl->hw, &wl->tx_work);
 } else {
  ieee80211_stop_queue(wl->hw, skb->queue_mapping);
 }
}

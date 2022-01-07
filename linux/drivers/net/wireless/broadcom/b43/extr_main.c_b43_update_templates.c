
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct b43_wl {int beacon0_uploaded; int beacon1_uploaded; int beacon_update_trigger; int hw; int beacon_lock; struct sk_buff* current_beacon; int vif; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* ieee80211_beacon_get (int ,int ) ;
 int ieee80211_queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void b43_update_templates(struct b43_wl *wl)
{
 struct sk_buff *beacon, *old_beacon;
 unsigned long flags;
 beacon = ieee80211_beacon_get(wl->hw, wl->vif);
 if (unlikely(!beacon))
  return;

 spin_lock_irqsave(&wl->beacon_lock, flags);
 old_beacon = wl->current_beacon;
 wl->current_beacon = beacon;
 wl->beacon0_uploaded = 0;
 wl->beacon1_uploaded = 0;
 spin_unlock_irqrestore(&wl->beacon_lock, flags);

 ieee80211_queue_work(wl->hw, &wl->beacon_update_trigger);

 if (old_beacon)
  dev_kfree_skb_any(old_beacon);
}

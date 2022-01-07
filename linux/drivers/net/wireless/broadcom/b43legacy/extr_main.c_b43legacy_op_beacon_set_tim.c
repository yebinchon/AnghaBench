
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sta {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct b43legacy_wl {int irq_lock; } ;


 int b43legacy_update_templates (struct b43legacy_wl*) ;
 struct b43legacy_wl* hw_to_b43legacy_wl (struct ieee80211_hw*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int b43legacy_op_beacon_set_tim(struct ieee80211_hw *hw,
           struct ieee80211_sta *sta, bool set)
{
 struct b43legacy_wl *wl = hw_to_b43legacy_wl(hw);
 unsigned long flags;

 spin_lock_irqsave(&wl->irq_lock, flags);
 b43legacy_update_templates(wl);
 spin_unlock_irqrestore(&wl->irq_lock, flags);

 return 0;
}

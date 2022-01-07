
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_low_level_stats {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct b43legacy_wl {int irq_lock; int ieee_stats; } ;


 struct b43legacy_wl* hw_to_b43legacy_wl (struct ieee80211_hw*) ;
 int memcpy (struct ieee80211_low_level_stats*,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int b43legacy_op_get_stats(struct ieee80211_hw *hw,
      struct ieee80211_low_level_stats *stats)
{
 struct b43legacy_wl *wl = hw_to_b43legacy_wl(hw);
 unsigned long flags;

 spin_lock_irqsave(&wl->irq_lock, flags);
 memcpy(stats, &wl->ieee_stats, sizeof(*stats));
 spin_unlock_irqrestore(&wl->irq_lock, flags);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ieee80211_hw {int dummy; } ;
struct b43legacy_wldev {int dummy; } ;
struct b43legacy_wl {unsigned int filter_flags; int irq_lock; struct b43legacy_wldev* current_dev; } ;


 scalar_t__ B43legacy_STAT_INITIALIZED ;
 unsigned int FIF_ALLMULTI ;
 unsigned int FIF_BCN_PRBRESP_PROMISC ;
 unsigned int FIF_CONTROL ;
 unsigned int FIF_FCSFAIL ;
 unsigned int FIF_OTHER_BSS ;
 unsigned int FIF_PLCPFAIL ;
 int b43legacy_adjust_opmode (struct b43legacy_wldev*) ;
 scalar_t__ b43legacy_status (struct b43legacy_wldev*) ;
 struct b43legacy_wl* hw_to_b43legacy_wl (struct ieee80211_hw*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void b43legacy_op_configure_filter(struct ieee80211_hw *hw,
       unsigned int changed,
       unsigned int *fflags,u64 multicast)
{
 struct b43legacy_wl *wl = hw_to_b43legacy_wl(hw);
 struct b43legacy_wldev *dev = wl->current_dev;
 unsigned long flags;

 if (!dev) {
  *fflags = 0;
  return;
 }

 spin_lock_irqsave(&wl->irq_lock, flags);
 *fflags &= FIF_ALLMULTI |
    FIF_FCSFAIL |
    FIF_PLCPFAIL |
    FIF_CONTROL |
    FIF_OTHER_BSS |
    FIF_BCN_PRBRESP_PROMISC;

 changed &= FIF_ALLMULTI |
     FIF_FCSFAIL |
     FIF_PLCPFAIL |
     FIF_CONTROL |
     FIF_OTHER_BSS |
     FIF_BCN_PRBRESP_PROMISC;

 wl->filter_flags = *fflags;

 if (changed && b43legacy_status(dev) >= B43legacy_STAT_INITIALIZED)
  b43legacy_adjust_opmode(dev);
 spin_unlock_irqrestore(&wl->irq_lock, flags);
}

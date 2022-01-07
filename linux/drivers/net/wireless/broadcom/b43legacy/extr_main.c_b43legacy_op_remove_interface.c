
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int type; } ;
struct ieee80211_hw {int dummy; } ;
struct b43legacy_wldev {int dummy; } ;
struct b43legacy_wl {int operating; int mutex; int irq_lock; int mac_addr; struct ieee80211_vif* vif; struct b43legacy_wldev* current_dev; } ;


 int B43legacy_WARN_ON (int) ;
 int b43legacy_adjust_opmode (struct b43legacy_wldev*) ;
 int b43legacy_upload_card_macaddress (struct b43legacy_wldev*) ;
 int b43legacydbg (struct b43legacy_wl*,char*,int ) ;
 int eth_zero_addr (int ) ;
 struct b43legacy_wl* hw_to_b43legacy_wl (struct ieee80211_hw*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void b43legacy_op_remove_interface(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif)
{
 struct b43legacy_wl *wl = hw_to_b43legacy_wl(hw);
 struct b43legacy_wldev *dev = wl->current_dev;
 unsigned long flags;

 b43legacydbg(wl, "Removing Interface type %d\n", vif->type);

 mutex_lock(&wl->mutex);

 B43legacy_WARN_ON(!wl->operating);
 B43legacy_WARN_ON(wl->vif != vif);
 wl->vif = ((void*)0);

 wl->operating = 0;

 spin_lock_irqsave(&wl->irq_lock, flags);
 b43legacy_adjust_opmode(dev);
 eth_zero_addr(wl->mac_addr);
 b43legacy_upload_card_macaddress(dev);
 spin_unlock_irqrestore(&wl->irq_lock, flags);

 mutex_unlock(&wl->mutex);
}

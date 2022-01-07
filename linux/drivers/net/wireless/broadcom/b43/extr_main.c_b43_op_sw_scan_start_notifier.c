
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct b43_wldev {int dummy; } ;
struct b43_wl {int mutex; struct b43_wldev* current_dev; } ;


 int B43_HF_SKCFPUP ;
 scalar_t__ B43_STAT_INITIALIZED ;
 int b43_hf_read (struct b43_wldev*) ;
 int b43_hf_write (struct b43_wldev*,int) ;
 scalar_t__ b43_status (struct b43_wldev*) ;
 struct b43_wl* hw_to_b43_wl (struct ieee80211_hw*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void b43_op_sw_scan_start_notifier(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       const u8 *mac_addr)
{
 struct b43_wl *wl = hw_to_b43_wl(hw);
 struct b43_wldev *dev;

 mutex_lock(&wl->mutex);
 dev = wl->current_dev;
 if (dev && (b43_status(dev) >= B43_STAT_INITIALIZED)) {

  b43_hf_write(dev, b43_hf_read(dev) | B43_HF_SKCFPUP);
 }
 mutex_unlock(&wl->mutex);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct brcms_info* priv; } ;
struct brcms_info {int lock; int wlc; } ;


 int brcms_c_scan_start (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void brcms_ops_sw_scan_start(struct ieee80211_hw *hw,
        struct ieee80211_vif *vif,
        const u8 *mac_addr)
{
 struct brcms_info *wl = hw->priv;
 spin_lock_bh(&wl->lock);
 brcms_c_scan_start(wl->wlc);
 spin_unlock_bh(&wl->lock);
 return;
}

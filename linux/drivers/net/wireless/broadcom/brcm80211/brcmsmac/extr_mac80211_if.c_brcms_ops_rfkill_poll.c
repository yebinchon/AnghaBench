
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_hw {struct brcms_info* priv; } ;
struct brcms_info {TYPE_2__* pub; int lock; int wlc; } ;
struct TYPE_4__ {TYPE_1__* ieee_hw; } ;
struct TYPE_3__ {int wiphy; } ;


 int brcms_c_check_radio_disabled (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;

__attribute__((used)) static void brcms_ops_rfkill_poll(struct ieee80211_hw *hw)
{
 struct brcms_info *wl = hw->priv;
 bool blocked;

 spin_lock_bh(&wl->lock);
 blocked = brcms_c_check_radio_disabled(wl->wlc);
 spin_unlock_bh(&wl->lock);

 wiphy_rfkill_set_hw_state(wl->pub->ieee_hw->wiphy, blocked);
}

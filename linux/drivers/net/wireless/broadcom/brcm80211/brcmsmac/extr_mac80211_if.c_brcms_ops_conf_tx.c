
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int dummy; } ;
struct ieee80211_hw {struct brcms_info* priv; } ;
struct brcms_info {int lock; int wlc; } ;


 int brcms_c_wme_setparams (int ,int ,struct ieee80211_tx_queue_params const*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
brcms_ops_conf_tx(struct ieee80211_hw *hw, struct ieee80211_vif *vif, u16 queue,
    const struct ieee80211_tx_queue_params *params)
{
 struct brcms_info *wl = hw->priv;

 spin_lock_bh(&wl->lock);
 brcms_c_wme_setparams(wl->wlc, queue, params, 1);
 spin_unlock_bh(&wl->lock);

 return 0;
}

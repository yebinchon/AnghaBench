
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct brcms_info* priv; } ;
struct brcms_info {int lock; int wlc; } ;


 int brcms_c_tsf_get (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static u64 brcms_ops_get_tsf(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct brcms_info *wl = hw->priv;
 u64 tsf;

 spin_lock_bh(&wl->lock);
 tsf = brcms_c_tsf_get(wl->wlc);
 spin_unlock_bh(&wl->lock);

 return tsf;
}

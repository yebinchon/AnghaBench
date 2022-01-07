
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int mutex; int iw_mode; struct ieee80211_vif* vif; } ;
struct ieee80211_vif {int type; int addr; } ;
struct ieee80211_hw {struct il_priv* priv; } ;


 int D_MAC80211 (char*,int,...) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int IL_WARN (char*,...) ;
 int NL80211_IFTYPE_STATION ;
 int il_is_ready_rf (struct il_priv*) ;
 int il_set_mode (struct il_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int
il_mac_add_interface(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
 struct il_priv *il = hw->priv;
 int err;
 bool reset;

 mutex_lock(&il->mutex);
 D_MAC80211("enter: type %d, addr %pM\n", vif->type, vif->addr);

 if (!il_is_ready_rf(il)) {
  IL_WARN("Try to add interface when device not ready\n");
  err = -EINVAL;
  goto out;
 }





 reset = (il->vif == vif);
 if (il->vif && !reset) {
  err = -EOPNOTSUPP;
  goto out;
 }

 il->vif = vif;
 il->iw_mode = vif->type;

 err = il_set_mode(il);
 if (err) {
  IL_WARN("Fail to set mode %d\n", vif->type);
  if (!reset) {
   il->vif = ((void*)0);
   il->iw_mode = NL80211_IFTYPE_STATION;
  }
 }

out:
 D_MAC80211("leave err %d\n", err);
 mutex_unlock(&il->mutex);

 return err;
}

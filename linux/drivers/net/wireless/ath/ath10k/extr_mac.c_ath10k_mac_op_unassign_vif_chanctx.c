
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {scalar_t__ type; scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct ieee80211_chanctx_conf {int dummy; } ;
struct ath10k_vif {int is_started; int is_up; int vdev_id; } ;
struct ath10k {int conf_mutex; } ;


 int ATH10K_DBG_MAC ;
 scalar_t__ NL80211_IFTYPE_MONITOR ;
 int WARN_ON (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,struct ieee80211_chanctx_conf*,int ) ;
 int ath10k_vdev_stop (struct ath10k_vif*) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int ath10k_wmi_vdev_down (struct ath10k*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
ath10k_mac_op_unassign_vif_chanctx(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       struct ieee80211_chanctx_conf *ctx)
{
 struct ath10k *ar = hw->priv;
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 int ret;

 mutex_lock(&ar->conf_mutex);

 ath10k_dbg(ar, ATH10K_DBG_MAC,
     "mac chanctx unassign ptr %pK vdev_id %i\n",
     ctx, arvif->vdev_id);

 WARN_ON(!arvif->is_started);

 if (vif->type == NL80211_IFTYPE_MONITOR) {
  WARN_ON(!arvif->is_up);

  ret = ath10k_wmi_vdev_down(ar, arvif->vdev_id);
  if (ret)
   ath10k_warn(ar, "failed to down monitor vdev %i: %d\n",
        arvif->vdev_id, ret);

  arvif->is_up = 0;
 }

 ret = ath10k_vdev_stop(arvif);
 if (ret)
  ath10k_warn(ar, "failed to stop vdev %i: %d\n",
       arvif->vdev_id, ret);

 arvif->is_started = 0;

 mutex_unlock(&ar->conf_mutex);
}

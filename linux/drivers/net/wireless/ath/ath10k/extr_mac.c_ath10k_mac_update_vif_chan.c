
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct ieee80211_vif_chanctx_switch {TYPE_6__* new_ctx; TYPE_5__* vif; TYPE_4__* old_ctx; } ;
struct ath10k_vif {int vdev_id; int bssid; int aid; int ar; int is_up; int is_started; } ;
struct ath10k {int data_lock; scalar_t__ monitor_started; int conf_mutex; } ;
struct TYPE_14__ {int width; TYPE_2__* chan; } ;
struct TYPE_13__ {TYPE_7__ def; } ;
struct TYPE_12__ {scalar_t__ drv_priv; } ;
struct TYPE_10__ {int width; TYPE_1__* chan; } ;
struct TYPE_11__ {TYPE_3__ def; } ;
struct TYPE_9__ {int center_freq; } ;
struct TYPE_8__ {int center_freq; } ;


 int ATH10K_DBG_MAC ;
 scalar_t__ WARN_ON (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,int ,int ,int ) ;
 int ath10k_mac_setup_bcn_tmpl (struct ath10k_vif*) ;
 int ath10k_mac_setup_prb_tmpl (struct ath10k_vif*) ;
 int ath10k_mac_update_rx_channel (struct ath10k*,int *,struct ieee80211_vif_chanctx_switch*,int) ;
 int ath10k_monitor_recalc (struct ath10k*) ;
 int ath10k_monitor_stop (struct ath10k*) ;
 int ath10k_vdev_restart (struct ath10k_vif*,TYPE_7__*) ;
 int ath10k_warn (struct ath10k*,char*,int,...) ;
 int ath10k_wmi_vdev_down (struct ath10k*,int ) ;
 int ath10k_wmi_vdev_up (int ,int ,int ,int ) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
ath10k_mac_update_vif_chan(struct ath10k *ar,
      struct ieee80211_vif_chanctx_switch *vifs,
      int n_vifs)
{
 struct ath10k_vif *arvif;
 int ret;
 int i;

 lockdep_assert_held(&ar->conf_mutex);




 if (ar->monitor_started)
  ath10k_monitor_stop(ar);

 for (i = 0; i < n_vifs; i++) {
  arvif = (void *)vifs[i].vif->drv_priv;

  ath10k_dbg(ar, ATH10K_DBG_MAC,
      "mac chanctx switch vdev_id %i freq %hu->%hu width %d->%d\n",
      arvif->vdev_id,
      vifs[i].old_ctx->def.chan->center_freq,
      vifs[i].new_ctx->def.chan->center_freq,
      vifs[i].old_ctx->def.width,
      vifs[i].new_ctx->def.width);

  if (WARN_ON(!arvif->is_started))
   continue;

  if (WARN_ON(!arvif->is_up))
   continue;

  ret = ath10k_wmi_vdev_down(ar, arvif->vdev_id);
  if (ret) {
   ath10k_warn(ar, "failed to down vdev %d: %d\n",
        arvif->vdev_id, ret);
   continue;
  }
 }





 spin_lock_bh(&ar->data_lock);
 ath10k_mac_update_rx_channel(ar, ((void*)0), vifs, n_vifs);
 spin_unlock_bh(&ar->data_lock);

 for (i = 0; i < n_vifs; i++) {
  arvif = (void *)vifs[i].vif->drv_priv;

  if (WARN_ON(!arvif->is_started))
   continue;

  if (WARN_ON(!arvif->is_up))
   continue;

  ret = ath10k_mac_setup_bcn_tmpl(arvif);
  if (ret)
   ath10k_warn(ar, "failed to update bcn tmpl during csa: %d\n",
        ret);

  ret = ath10k_mac_setup_prb_tmpl(arvif);
  if (ret)
   ath10k_warn(ar, "failed to update prb tmpl during csa: %d\n",
        ret);

  ret = ath10k_vdev_restart(arvif, &vifs[i].new_ctx->def);
  if (ret) {
   ath10k_warn(ar, "failed to restart vdev %d: %d\n",
        arvif->vdev_id, ret);
   continue;
  }

  ret = ath10k_wmi_vdev_up(arvif->ar, arvif->vdev_id, arvif->aid,
      arvif->bssid);
  if (ret) {
   ath10k_warn(ar, "failed to bring vdev up %d: %d\n",
        arvif->vdev_id, ret);
   continue;
  }
 }

 ath10k_monitor_recalc(ar);
}

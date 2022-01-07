
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct wmi_wmm_params_arg {int txop; int aifs; int cwmax; int cwmin; } ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_tx_queue_params {int txop; int uapsd; int aifs; int cw_max; int cw_min; } ;
struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_7__ {struct wmi_wmm_params_arg ac_bk; struct wmi_wmm_params_arg ac_be; struct wmi_wmm_params_arg ac_vi; struct wmi_wmm_params_arg ac_vo; } ;
struct ath10k_vif {TYPE_3__ wmm_params; int vdev_id; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct ath10k {int conf_mutex; TYPE_2__ wmi; } ;
struct TYPE_5__ {scalar_t__ gen_vdev_wmm_conf; } ;


 int EINVAL ;




 scalar_t__ WARN_ON (int) ;
 int ath10k_conf_tx_uapsd (struct ath10k*,struct ieee80211_vif*,int ,int ) ;
 int ath10k_warn (struct ath10k*,char*,int,...) ;
 int ath10k_wmi_pdev_set_wmm_params (struct ath10k*,TYPE_3__*) ;
 int ath10k_wmi_vdev_wmm_conf (struct ath10k*,int ,TYPE_3__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ath10k_conf_tx(struct ieee80211_hw *hw,
     struct ieee80211_vif *vif, u16 ac,
     const struct ieee80211_tx_queue_params *params)
{
 struct ath10k *ar = hw->priv;
 struct ath10k_vif *arvif = (void *)vif->drv_priv;
 struct wmi_wmm_params_arg *p = ((void*)0);
 int ret;

 mutex_lock(&ar->conf_mutex);

 switch (ac) {
 case 128:
  p = &arvif->wmm_params.ac_vo;
  break;
 case 129:
  p = &arvif->wmm_params.ac_vi;
  break;
 case 131:
  p = &arvif->wmm_params.ac_be;
  break;
 case 130:
  p = &arvif->wmm_params.ac_bk;
  break;
 }

 if (WARN_ON(!p)) {
  ret = -EINVAL;
  goto exit;
 }

 p->cwmin = params->cw_min;
 p->cwmax = params->cw_max;
 p->aifs = params->aifs;






 p->txop = params->txop * 32;

 if (ar->wmi.ops->gen_vdev_wmm_conf) {
  ret = ath10k_wmi_vdev_wmm_conf(ar, arvif->vdev_id,
            &arvif->wmm_params);
  if (ret) {
   ath10k_warn(ar, "failed to set vdev wmm params on vdev %i: %d\n",
        arvif->vdev_id, ret);
   goto exit;
  }
 } else {



  ret = ath10k_wmi_pdev_set_wmm_params(ar, &arvif->wmm_params);
  if (ret) {
   ath10k_warn(ar, "failed to set wmm params: %d\n", ret);
   goto exit;
  }
 }

 ret = ath10k_conf_tx_uapsd(ar, vif, ac, params->uapsd);
 if (ret)
  ath10k_warn(ar, "failed to set sta uapsd: %d\n", ret);

exit:
 mutex_unlock(&ar->conf_mutex);
 return ret;
}

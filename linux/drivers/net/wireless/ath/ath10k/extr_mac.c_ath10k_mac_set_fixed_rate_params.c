
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ath10k_vif {int vdev_id; struct ath10k* ar; } ;
struct TYPE_4__ {TYPE_1__* vdev_param; } ;
struct ath10k {TYPE_2__ wmi; int conf_mutex; } ;
struct TYPE_3__ {int ldpc; int sgi; int nss; int fixed_rate; } ;


 int ATH10K_DBG_MAC ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ,int ,int ) ;
 int ath10k_warn (struct ath10k*,char*,int ,int) ;
 int ath10k_wmi_vdev_set_param (struct ath10k*,int ,int ,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int ath10k_mac_set_fixed_rate_params(struct ath10k_vif *arvif,
         u8 rate, u8 nss, u8 sgi, u8 ldpc)
{
 struct ath10k *ar = arvif->ar;
 u32 vdev_param;
 int ret;

 lockdep_assert_held(&ar->conf_mutex);

 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac set fixed rate params vdev %i rate 0x%02hhx nss %hhu sgi %hhu\n",
     arvif->vdev_id, rate, nss, sgi);

 vdev_param = ar->wmi.vdev_param->fixed_rate;
 ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id, vdev_param, rate);
 if (ret) {
  ath10k_warn(ar, "failed to set fixed rate param 0x%02x: %d\n",
       rate, ret);
  return ret;
 }

 vdev_param = ar->wmi.vdev_param->nss;
 ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id, vdev_param, nss);
 if (ret) {
  ath10k_warn(ar, "failed to set nss param %d: %d\n", nss, ret);
  return ret;
 }

 vdev_param = ar->wmi.vdev_param->sgi;
 ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id, vdev_param, sgi);
 if (ret) {
  ath10k_warn(ar, "failed to set sgi param %d: %d\n", sgi, ret);
  return ret;
 }

 vdev_param = ar->wmi.vdev_param->ldpc;
 ret = ath10k_wmi_vdev_set_param(ar, arvif->vdev_id, vdev_param, ldpc);
 if (ret) {
  ath10k_warn(ar, "failed to set ldpc param %d: %d\n", ldpc, ret);
  return ret;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ath10k_vif {scalar_t__ use_cts_prot; int vdev_id; struct ath10k* ar; } ;
struct TYPE_4__ {TYPE_1__* vdev_param; } ;
struct ath10k {TYPE_2__ wmi; int conf_mutex; } ;
struct TYPE_3__ {int protection_mode; } ;


 int ATH10K_DBG_MAC ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,scalar_t__) ;
 int ath10k_wmi_vdev_set_param (struct ath10k*,int ,int ,int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int ath10k_mac_set_cts_prot(struct ath10k_vif *arvif)
{
 struct ath10k *ar = arvif->ar;
 u32 vdev_param;

 lockdep_assert_held(&ar->conf_mutex);

 vdev_param = ar->wmi.vdev_param->protection_mode;

 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac vdev %d cts_protection %d\n",
     arvif->vdev_id, arvif->use_cts_prot);

 return ath10k_wmi_vdev_set_param(ar, arvif->vdev_id, vdev_param,
      arvif->use_cts_prot ? 1 : 0);
}

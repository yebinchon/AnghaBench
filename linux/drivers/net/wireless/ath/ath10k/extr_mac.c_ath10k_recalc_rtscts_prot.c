
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ath10k_vif {scalar_t__ num_legacy_stations; int vdev_id; struct ath10k* ar; } ;
struct TYPE_3__ {TYPE_2__* vdev_param; } ;
struct ath10k {TYPE_1__ wmi; int conf_mutex; } ;
struct TYPE_4__ {int enable_rtscts; } ;


 int ATH10K_DBG_MAC ;
 int SM (int ,int ) ;
 int WMI_RTSCTS_ACROSS_SW_RETRIES ;
 int WMI_RTSCTS_ENABLED ;
 int WMI_RTSCTS_FOR_SECOND_RATESERIES ;
 int WMI_RTSCTS_PROFILE ;
 int WMI_RTSCTS_SET ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int ) ;
 int ath10k_wmi_vdev_set_param (struct ath10k*,int ,int ,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int ath10k_recalc_rtscts_prot(struct ath10k_vif *arvif)
{
 struct ath10k *ar = arvif->ar;
 u32 vdev_param, rts_cts = 0;

 lockdep_assert_held(&ar->conf_mutex);

 vdev_param = ar->wmi.vdev_param->enable_rtscts;

 rts_cts |= SM(WMI_RTSCTS_ENABLED, WMI_RTSCTS_SET);

 if (arvif->num_legacy_stations > 0)
  rts_cts |= SM(WMI_RTSCTS_ACROSS_SW_RETRIES,
         WMI_RTSCTS_PROFILE);
 else
  rts_cts |= SM(WMI_RTSCTS_FOR_SECOND_RATESERIES,
         WMI_RTSCTS_PROFILE);

 ath10k_dbg(ar, ATH10K_DBG_MAC, "mac vdev %d recalc rts/cts prot %d\n",
     arvif->vdev_id, rts_cts);

 return ath10k_wmi_vdev_set_param(ar, arvif->vdev_id, vdev_param,
      rts_cts);
}

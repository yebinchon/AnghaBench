
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ath10k_vif {int vdev_id; struct ath10k* ar; } ;
struct TYPE_4__ {TYPE_1__* vdev_param; } ;
struct ath10k {TYPE_2__ wmi; } ;
struct TYPE_3__ {int rts_threshold; } ;


 int ath10k_wmi_vdev_set_param (struct ath10k*,int ,int ,int ) ;

__attribute__((used)) static int ath10k_mac_set_rts(struct ath10k_vif *arvif, u32 value)
{
 struct ath10k *ar = arvif->ar;
 u32 vdev_param;

 vdev_param = ar->wmi.vdev_param->rts_threshold;
 return ath10k_wmi_vdev_set_param(ar, arvif->vdev_id, vdev_param, value);
}

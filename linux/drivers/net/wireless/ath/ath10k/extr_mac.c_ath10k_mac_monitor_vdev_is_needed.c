
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath10k {int filter_flags; int dev_flags; TYPE_2__* running_fw; scalar_t__ monitor; scalar_t__ monitor_arvif; } ;
struct TYPE_3__ {int * fw_features; } ;
struct TYPE_4__ {TYPE_1__ fw_file; } ;


 int ATH10K_CAC_RUNNING ;
 int ATH10K_FW_FEATURE_ALLOWS_MESH_BCAST ;
 int FIF_OTHER_BSS ;
 int ath10k_mac_num_chanctxs (struct ath10k*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool ath10k_mac_monitor_vdev_is_needed(struct ath10k *ar)
{
 int num_ctx;




 num_ctx = ath10k_mac_num_chanctxs(ar);
 if (num_ctx == 0)
  return 0;




 if (ar->monitor_arvif)
  return 0;

 return ar->monitor ||
        (!test_bit(ATH10K_FW_FEATURE_ALLOWS_MESH_BCAST,
     ar->running_fw->fw_file.fw_features) &&
  (ar->filter_flags & FIF_OTHER_BSS)) ||
        test_bit(ATH10K_CAC_RUNNING, &ar->dev_flags);
}

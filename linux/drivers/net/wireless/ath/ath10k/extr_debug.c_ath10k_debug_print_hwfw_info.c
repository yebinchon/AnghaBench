
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


typedef int u32 ;
struct firmware {int size; int data; } ;
struct TYPE_11__ {struct firmware* firmware; } ;
struct TYPE_12__ {TYPE_4__ fw_file; } ;
struct TYPE_10__ {int subsystem_device; int subsystem_vendor; } ;
struct TYPE_9__ {int chip_id; } ;
struct TYPE_8__ {int name; } ;
struct ath10k {int fw_api; TYPE_7__* hw; TYPE_5__ normal_mode_fw; TYPE_3__ id; TYPE_2__ bus_param; int target_version; TYPE_1__ hw_params; } ;
typedef int fw_features ;
struct TYPE_14__ {TYPE_6__* wiphy; } ;
struct TYPE_13__ {int fw_version; } ;


 int CONFIG_ATH10K_DEBUG ;
 int CONFIG_ATH10K_DEBUGFS ;
 int CONFIG_ATH10K_DFS_CERTIFIED ;
 int CONFIG_ATH10K_TRACING ;
 int CONFIG_NL80211_TESTMODE ;
 int IS_ENABLED (int ) ;
 int ath10k_core_get_fw_features_str (struct ath10k*,char*,int) ;
 int ath10k_info (struct ath10k*,char*,int ,int ,char*,int ,...) ;
 int crc32_le (int ,int ,int ) ;

void ath10k_debug_print_hwfw_info(struct ath10k *ar)
{
 const struct firmware *firmware;
 char fw_features[128] = {};
 u32 crc = 0;

 ath10k_core_get_fw_features_str(ar, fw_features, sizeof(fw_features));

 ath10k_info(ar, "%s target 0x%08x chip_id 0x%08x sub %04x:%04x",
      ar->hw_params.name,
      ar->target_version,
      ar->bus_param.chip_id,
      ar->id.subsystem_vendor, ar->id.subsystem_device);

 ath10k_info(ar, "kconfig debug %d debugfs %d tracing %d dfs %d testmode %d\n",
      IS_ENABLED(CONFIG_ATH10K_DEBUG),
      IS_ENABLED(CONFIG_ATH10K_DEBUGFS),
      IS_ENABLED(CONFIG_ATH10K_TRACING),
      IS_ENABLED(CONFIG_ATH10K_DFS_CERTIFIED),
      IS_ENABLED(CONFIG_NL80211_TESTMODE));

 firmware = ar->normal_mode_fw.fw_file.firmware;
 if (firmware)
  crc = crc32_le(0, firmware->data, firmware->size);

 ath10k_info(ar, "firmware ver %s api %d features %s crc32 %08x\n",
      ar->hw->wiphy->fw_version,
      ar->fw_api,
      fw_features,
      crc);
}

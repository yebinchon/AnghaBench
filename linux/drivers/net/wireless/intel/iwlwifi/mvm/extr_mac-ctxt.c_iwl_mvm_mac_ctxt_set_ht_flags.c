
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct iwl_mvm {int dummy; } ;
struct iwl_mac_ctx_cmd {int protection_flags; } ;
struct TYPE_3__ {int width; } ;
struct TYPE_4__ {int ht_operation_mode; TYPE_1__ chandef; } ;
struct ieee80211_vif {TYPE_2__ bss_conf; } ;


 int IEEE80211_HT_OP_MODE_PROTECTION ;




 int IWL_DEBUG_RATE (struct iwl_mvm*,char*,int) ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int MAC_PROT_FLG_FAT_PROT ;
 int MAC_PROT_FLG_HT_PROT ;
 int NL80211_CHAN_WIDTH_20 ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static void iwl_mvm_mac_ctxt_set_ht_flags(struct iwl_mvm *mvm,
      struct ieee80211_vif *vif,
      struct iwl_mac_ctx_cmd *cmd)
{

 u8 protection_mode = vif->bss_conf.ht_operation_mode &
     IEEE80211_HT_OP_MODE_PROTECTION;

 u32 ht_flag = MAC_PROT_FLG_HT_PROT | MAC_PROT_FLG_FAT_PROT;

 IWL_DEBUG_RATE(mvm, "protection mode set to %d\n", protection_mode);




 switch (protection_mode) {
 case 130:
  break;
 case 128:
 case 129:
  cmd->protection_flags |= cpu_to_le32(ht_flag);
  break;
 case 131:

  if (vif->bss_conf.chandef.width > NL80211_CHAN_WIDTH_20)
   cmd->protection_flags |= cpu_to_le32(ht_flag);
  break;
 default:
  IWL_ERR(mvm, "Illegal protection mode %d\n",
   protection_mode);
  break;
 }
}

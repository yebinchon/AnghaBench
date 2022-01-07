
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct iwl_mvm_add_sta_key_cmd_v1 {int dummy; } ;
struct TYPE_4__ {scalar_t__ sta_id; int key_offset; int key_flags; } ;
struct iwl_mvm_add_sta_key_cmd {TYPE_2__ common; } ;
struct iwl_mvm {TYPE_1__* fw; } ;
struct ieee80211_key_conf {int keyidx; int hw_key_idx; } ;
typedef int __le16 ;
struct TYPE_3__ {int ucode_capa; } ;


 int ADD_STA_KEY ;

 int EIO ;
 int IWL_DEBUG_WEP (struct iwl_mvm*,char*) ;
 int IWL_ERR (struct iwl_mvm*,char*) ;
 scalar_t__ IWL_MVM_INVALID_STA ;
 int IWL_UCODE_TLV_API_TKIP_MIC_KEYS ;
 int STA_KEY_FLG_KEYID_MSK ;
 int STA_KEY_FLG_KEYID_POS ;
 int STA_KEY_FLG_NO_ENC ;
 int STA_KEY_FLG_WEP_KEY_MAP ;
 int STA_KEY_MULTICAST ;
 int STA_KEY_NOT_VALID ;
 int cpu_to_le16 (int) ;
 int fw_has_api (int *,int ) ;
 int iwl_mvm_send_cmd_pdu_status (struct iwl_mvm*,int ,int,struct iwl_mvm_add_sta_key_cmd*,int*) ;

__attribute__((used)) static int __iwl_mvm_remove_sta_key(struct iwl_mvm *mvm, u8 sta_id,
        struct ieee80211_key_conf *keyconf,
        bool mcast)
{
 union {
  struct iwl_mvm_add_sta_key_cmd_v1 cmd_v1;
  struct iwl_mvm_add_sta_key_cmd cmd;
 } u = {};
 bool new_api = fw_has_api(&mvm->fw->ucode_capa,
      IWL_UCODE_TLV_API_TKIP_MIC_KEYS);
 __le16 key_flags;
 int ret, size;
 u32 status;


 if (sta_id == IWL_MVM_INVALID_STA)
  return 0;

 key_flags = cpu_to_le16((keyconf->keyidx << STA_KEY_FLG_KEYID_POS) &
     STA_KEY_FLG_KEYID_MSK);
 key_flags |= cpu_to_le16(STA_KEY_FLG_NO_ENC | STA_KEY_FLG_WEP_KEY_MAP);
 key_flags |= cpu_to_le16(STA_KEY_NOT_VALID);

 if (mcast)
  key_flags |= cpu_to_le16(STA_KEY_MULTICAST);





 u.cmd.common.key_flags = key_flags;
 u.cmd.common.key_offset = keyconf->hw_key_idx;
 u.cmd.common.sta_id = sta_id;

 size = new_api ? sizeof(u.cmd) : sizeof(u.cmd_v1);

 status = 128;
 ret = iwl_mvm_send_cmd_pdu_status(mvm, ADD_STA_KEY, size, &u.cmd,
       &status);

 switch (status) {
 case 128:
  IWL_DEBUG_WEP(mvm, "MODIFY_STA: remove sta key passed\n");
  break;
 default:
  ret = -EIO;
  IWL_ERR(mvm, "MODIFY_STA: remove sta key failed\n");
  break;
 }

 return ret;
}

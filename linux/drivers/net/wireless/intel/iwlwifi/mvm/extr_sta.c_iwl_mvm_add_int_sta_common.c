
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct iwl_mvm_int_sta {int tfd_queue_msk; int type; int sta_id; } ;
struct iwl_mvm_add_sta_cmd {int addr; int tid_disable_tx; void* tfd_queue_msk; int station_type; void* mac_id_n_color; int sta_id; } ;
struct iwl_mvm {TYPE_1__* fw; int mutex; } ;
typedef int cmd ;
struct TYPE_2__ {int ucode_capa; } ;


 int ADD_STA ;

 int EIO ;
 int ETH_ALEN ;
 int FW_CMD_ID_AND_COLOR (int ,int ) ;
 int IWL_ADD_STA_STATUS_MASK ;
 int IWL_DEBUG_INFO (struct iwl_mvm*,char*) ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int IWL_UCODE_TLV_API_STA_TYPE ;
 int cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 scalar_t__ fw_has_api (int *,int ) ;
 int iwl_mvm_add_sta_cmd_size (struct iwl_mvm*) ;
 int iwl_mvm_has_new_tx_api (struct iwl_mvm*) ;
 int iwl_mvm_send_cmd_pdu_status (struct iwl_mvm*,int ,int ,struct iwl_mvm_add_sta_cmd*,int*) ;
 int lockdep_assert_held (int *) ;
 int memcpy (int ,int const*,int ) ;
 int memset (struct iwl_mvm_add_sta_cmd*,int ,int) ;

__attribute__((used)) static int iwl_mvm_add_int_sta_common(struct iwl_mvm *mvm,
          struct iwl_mvm_int_sta *sta,
          const u8 *addr,
          u16 mac_id, u16 color)
{
 struct iwl_mvm_add_sta_cmd cmd;
 int ret;
 u32 status = 128;

 lockdep_assert_held(&mvm->mutex);

 memset(&cmd, 0, sizeof(cmd));
 cmd.sta_id = sta->sta_id;
 cmd.mac_id_n_color = cpu_to_le32(FW_CMD_ID_AND_COLOR(mac_id,
            color));
 if (fw_has_api(&mvm->fw->ucode_capa, IWL_UCODE_TLV_API_STA_TYPE))
  cmd.station_type = sta->type;

 if (!iwl_mvm_has_new_tx_api(mvm))
  cmd.tfd_queue_msk = cpu_to_le32(sta->tfd_queue_msk);
 cmd.tid_disable_tx = cpu_to_le16(0xffff);

 if (addr)
  memcpy(cmd.addr, addr, ETH_ALEN);

 ret = iwl_mvm_send_cmd_pdu_status(mvm, ADD_STA,
       iwl_mvm_add_sta_cmd_size(mvm),
       &cmd, &status);
 if (ret)
  return ret;

 switch (status & IWL_ADD_STA_STATUS_MASK) {
 case 128:
  IWL_DEBUG_INFO(mvm, "Internal station added.\n");
  return 0;
 default:
  ret = -EIO;
  IWL_ERR(mvm, "Add internal station failed, status=0x%x\n",
   status);
  break;
 }
 return ret;
}

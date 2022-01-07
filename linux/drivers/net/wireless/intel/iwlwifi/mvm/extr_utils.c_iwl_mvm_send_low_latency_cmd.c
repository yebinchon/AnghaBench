
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct iwl_mvm {TYPE_1__* fw; } ;
struct iwl_mac_low_latency_cmd {int low_latency_rx; int low_latency_tx; int mac_id; } ;
typedef int cmd ;
struct TYPE_2__ {int ucode_capa; } ;


 int IWL_ERR (struct iwl_mvm*,char*) ;
 int IWL_UCODE_TLV_CAPA_DYNAMIC_QUOTA ;
 int LOW_LATENCY_CMD ;
 int MAC_CONF_GROUP ;
 int cpu_to_le32 (int ) ;
 int fw_has_capa (int *,int ) ;
 int iwl_cmd_id (int ,int ,int ) ;
 scalar_t__ iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_mac_low_latency_cmd*) ;

void iwl_mvm_send_low_latency_cmd(struct iwl_mvm *mvm,
      bool low_latency, u16 mac_id)
{
 struct iwl_mac_low_latency_cmd cmd = {
  .mac_id = cpu_to_le32(mac_id)
 };

 if (!fw_has_capa(&mvm->fw->ucode_capa,
    IWL_UCODE_TLV_CAPA_DYNAMIC_QUOTA))
  return;

 if (low_latency) {

  cmd.low_latency_rx = 1;
  cmd.low_latency_tx = 1;
 }

 if (iwl_mvm_send_cmd_pdu(mvm, iwl_cmd_id(LOW_LATENCY_CMD,
       MAC_CONF_GROUP, 0),
     0, sizeof(cmd), &cmd))
  IWL_ERR(mvm, "Failed to send low latency command\n");
}

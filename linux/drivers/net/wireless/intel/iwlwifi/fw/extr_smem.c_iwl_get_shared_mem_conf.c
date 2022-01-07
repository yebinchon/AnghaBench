
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iwl_rx_packet {int dummy; } ;
struct iwl_host_cmd {struct iwl_rx_packet* resp_pkt; int id; int len; int data; int flags; } ;
struct iwl_fw_runtime {TYPE_3__* trans; TYPE_1__* fw; } ;
struct TYPE_6__ {TYPE_2__* trans_cfg; } ;
struct TYPE_5__ {scalar_t__ device_family; } ;
struct TYPE_4__ {int ucode_capa; } ;


 int CMD_WANT_SKB ;
 int ERFKILL ;
 int IWL_DEBUG_INFO (struct iwl_fw_runtime*,char*) ;
 scalar_t__ IWL_DEVICE_FAMILY_22000 ;
 int IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG ;
 int SHARED_MEM_CFG ;
 int SHARED_MEM_CFG_CMD ;
 int SYSTEM_GROUP ;
 int WARN (int,char*,int) ;
 scalar_t__ fw_has_capa (int *,int ) ;
 int iwl_cmd_id (int ,int ,int ) ;
 int iwl_free_resp (struct iwl_host_cmd*) ;
 int iwl_parse_shared_mem (struct iwl_fw_runtime*,struct iwl_rx_packet*) ;
 int iwl_parse_shared_mem_22000 (struct iwl_fw_runtime*,struct iwl_rx_packet*) ;
 int iwl_trans_send_cmd (TYPE_3__*,struct iwl_host_cmd*) ;

void iwl_get_shared_mem_conf(struct iwl_fw_runtime *fwrt)
{
 struct iwl_host_cmd cmd = {
  .flags = CMD_WANT_SKB,
  .data = { ((void*)0), },
  .len = { 0, },
 };
 struct iwl_rx_packet *pkt;
 int ret;

 if (fw_has_capa(&fwrt->fw->ucode_capa,
   IWL_UCODE_TLV_CAPA_EXTEND_SHARED_MEM_CFG))
  cmd.id = iwl_cmd_id(SHARED_MEM_CFG_CMD, SYSTEM_GROUP, 0);
 else
  cmd.id = SHARED_MEM_CFG;

 ret = iwl_trans_send_cmd(fwrt->trans, &cmd);

 if (ret) {
  WARN(ret != -ERFKILL,
       "Could not send the SMEM command: %d\n", ret);
  return;
 }

 pkt = cmd.resp_pkt;
 if (fwrt->trans->trans_cfg->device_family >= IWL_DEVICE_FAMILY_22000)
  iwl_parse_shared_mem_22000(fwrt, pkt);
 else
  iwl_parse_shared_mem(fwrt, pkt);

 IWL_DEBUG_INFO(fwrt, "SHARED MEM CFG: got memory offsets/sizes\n");

 iwl_free_resp(&cmd);
}

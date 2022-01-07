
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_error_resp {int timestamp; int error_service; int bad_cmd_seq_num; int cmd_id; int error_type; } ;


 int IWL_ERR (struct iwl_mvm*,char*,int ,...) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 struct iwl_rx_packet* rxb_addr (struct iwl_rx_cmd_buffer*) ;

void iwl_mvm_rx_fw_error(struct iwl_mvm *mvm, struct iwl_rx_cmd_buffer *rxb)
{
 struct iwl_rx_packet *pkt = rxb_addr(rxb);
 struct iwl_error_resp *err_resp = (void *)pkt->data;

 IWL_ERR(mvm, "FW Error notification: type 0x%08X cmd_id 0x%02X\n",
  le32_to_cpu(err_resp->error_type), err_resp->cmd_id);
 IWL_ERR(mvm, "FW Error notification: seq 0x%04X service 0x%08X\n",
  le16_to_cpu(err_resp->bad_cmd_seq_num),
  le32_to_cpu(err_resp->error_service));
 IWL_ERR(mvm, "FW Error notification: timestamp 0x%016llX\n",
  le64_to_cpu(err_resp->timestamp));
}

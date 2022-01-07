
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_mvm {int trans; int d3_test_active; int mutex; } ;
struct iwl_host_cmd {int flags; struct iwl_rx_packet* resp_pkt; } ;
struct iwl_cmd_response {int status; } ;


 int CMD_ASYNC ;
 int CMD_WANT_SKB ;
 int EINVAL ;
 int EIO ;
 int ERFKILL ;
 scalar_t__ WARN_ON (int ) ;
 scalar_t__ WARN_ONCE (int,char*,int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int iwl_free_resp (struct iwl_host_cmd*) ;
 int iwl_rx_packet_payload_len (struct iwl_rx_packet*) ;
 int iwl_trans_send_cmd (int ,struct iwl_host_cmd*) ;
 int le32_to_cpu (int ) ;
 int lockdep_assert_held (int *) ;

int iwl_mvm_send_cmd_status(struct iwl_mvm *mvm, struct iwl_host_cmd *cmd,
       u32 *status)
{
 struct iwl_rx_packet *pkt;
 struct iwl_cmd_response *resp;
 int ret, resp_len;

 lockdep_assert_held(&mvm->mutex);
 if (WARN_ONCE(cmd->flags & (CMD_ASYNC | CMD_WANT_SKB),
        "cmd flags %x", cmd->flags))
  return -EINVAL;

 cmd->flags |= CMD_WANT_SKB;

 ret = iwl_trans_send_cmd(mvm->trans, cmd);
 if (ret == -ERFKILL) {




  return 0;
 } else if (ret) {
  return ret;
 }

 pkt = cmd->resp_pkt;

 resp_len = iwl_rx_packet_payload_len(pkt);
 if (WARN_ON_ONCE(resp_len != sizeof(*resp))) {
  ret = -EIO;
  goto out_free_resp;
 }

 resp = (void *)pkt->data;
 *status = le32_to_cpu(resp->status);
 out_free_resp:
 iwl_free_resp(cmd);
 return ret;
}

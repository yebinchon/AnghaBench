
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iwl_rxq_sync_cmd {int payload; scalar_t__ flags; void* count; void* rxq_mask; } ;
struct iwl_mvm_rss_sync_notif {int dummy; } ;
struct iwl_mvm {int dummy; } ;


 int CMD_ASYNC ;
 int DATA_PATH_GROUP ;
 int EINVAL ;
 int TRIGGER_RX_QUEUES_NOTIF_CMD ;
 scalar_t__ WARN_ON (int) ;
 int WIDE_ID (int ,int ) ;
 void* cpu_to_le32 (int) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_rxq_sync_cmd*) ;
 int memcpy (int ,int const*,int) ;

int iwl_mvm_notify_rx_queue(struct iwl_mvm *mvm, u32 rxq_mask,
       const u8 *data, u32 count, bool async)
{
 u8 buf[sizeof(struct iwl_rxq_sync_cmd) +
        sizeof(struct iwl_mvm_rss_sync_notif)];
 struct iwl_rxq_sync_cmd *cmd = (void *)buf;
 u32 data_size = sizeof(*cmd) + count;
 int ret;





 if (WARN_ON(count & 3 ||
      count > sizeof(struct iwl_mvm_rss_sync_notif)))
  return -EINVAL;

 cmd->rxq_mask = cpu_to_le32(rxq_mask);
 cmd->count = cpu_to_le32(count);
 cmd->flags = 0;
 memcpy(cmd->payload, data, count);

 ret = iwl_mvm_send_cmd_pdu(mvm,
       WIDE_ID(DATA_PATH_GROUP,
        TRIGGER_RX_QUEUES_NOTIF_CMD),
       async ? CMD_ASYNC : 0, data_size, cmd);

 return ret;
}

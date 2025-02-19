
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct htt_msdu_ext_desc_64 {int dummy; } ;
struct TYPE_16__ {int record_multiplier; int record_size; void* num_tids; void* num_peers; int paddr; } ;
struct htt_frag_desc_bank_cfg64 {int num_banks; int desc_size; TYPE_8__ q_state; TYPE_6__* bank_id; int * bank_base_addrs; int info; } ;
struct TYPE_10__ {int msg_type; } ;
struct htt_cmd {struct htt_frag_desc_bank_cfg64 frag_desc_bank_cfg64; TYPE_2__ hdr; } ;
struct TYPE_15__ {int num_tids; int num_peers; int paddr; int type; } ;
struct TYPE_13__ {int paddr; } ;
struct ath10k_htt {int eid; struct ath10k* ar; TYPE_7__ tx_q_state; scalar_t__ max_num_pending_tx; TYPE_5__ frag_desc; } ;
struct TYPE_9__ {int continuous_frag_desc; } ;
struct ath10k {int htc; TYPE_4__* running_fw; TYPE_1__ hw_params; } ;
struct TYPE_14__ {int bank_max_id; scalar_t__ bank_min_id; } ;
struct TYPE_11__ {int fw_features; } ;
struct TYPE_12__ {TYPE_3__ fw_file; } ;


 int ATH10K_DBG_HTT ;
 int ATH10K_FW_FEATURE_PEER_FLOW_CONTROL ;
 int EINVAL ;
 int ENOMEM ;
 int HTT_FRAG_DESC_BANK_CFG_INFO_Q_STATE_DEPTH_TYPE ;
 int HTT_FRAG_DESC_BANK_CFG_INFO_Q_STATE_VALID ;
 int HTT_H2T_MSG_TYPE_FRAG_DESC_BANK_CFG ;
 int HTT_TX_Q_STATE_ENTRY_MULTIPLIER ;
 int HTT_TX_Q_STATE_ENTRY_SIZE ;
 int SM (int ,int ) ;
 int __cpu_to_le16 (scalar_t__) ;
 int __cpu_to_le64 (int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 struct sk_buff* ath10k_htc_alloc_skb (struct ath10k*,int) ;
 int ath10k_htc_send (int *,int ,struct sk_buff*) ;
 int ath10k_warn (struct ath10k*,char*,...) ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int ath10k_htt_send_frag_desc_bank_cfg_64(struct ath10k_htt *htt)
{
 struct ath10k *ar = htt->ar;
 struct sk_buff *skb;
 struct htt_cmd *cmd;
 struct htt_frag_desc_bank_cfg64 *cfg;
 int ret, size;
 u8 info;

 if (!ar->hw_params.continuous_frag_desc)
  return 0;

 if (!htt->frag_desc.paddr) {
  ath10k_warn(ar, "invalid frag desc memory\n");
  return -EINVAL;
 }

 size = sizeof(cmd->hdr) + sizeof(cmd->frag_desc_bank_cfg64);
 skb = ath10k_htc_alloc_skb(ar, size);
 if (!skb)
  return -ENOMEM;

 skb_put(skb, size);
 cmd = (struct htt_cmd *)skb->data;
 cmd->hdr.msg_type = HTT_H2T_MSG_TYPE_FRAG_DESC_BANK_CFG;

 info = 0;
 info |= SM(htt->tx_q_state.type,
     HTT_FRAG_DESC_BANK_CFG_INFO_Q_STATE_DEPTH_TYPE);

 if (test_bit(ATH10K_FW_FEATURE_PEER_FLOW_CONTROL,
       ar->running_fw->fw_file.fw_features))
  info |= HTT_FRAG_DESC_BANK_CFG_INFO_Q_STATE_VALID;

 cfg = &cmd->frag_desc_bank_cfg64;
 cfg->info = info;
 cfg->num_banks = 1;
 cfg->desc_size = sizeof(struct htt_msdu_ext_desc_64);
 cfg->bank_base_addrs[0] = __cpu_to_le64(htt->frag_desc.paddr);
 cfg->bank_id[0].bank_min_id = 0;
 cfg->bank_id[0].bank_max_id = __cpu_to_le16(htt->max_num_pending_tx -
          1);

 cfg->q_state.paddr = cpu_to_le32(htt->tx_q_state.paddr);
 cfg->q_state.num_peers = cpu_to_le16(htt->tx_q_state.num_peers);
 cfg->q_state.num_tids = cpu_to_le16(htt->tx_q_state.num_tids);
 cfg->q_state.record_size = HTT_TX_Q_STATE_ENTRY_SIZE;
 cfg->q_state.record_multiplier = HTT_TX_Q_STATE_ENTRY_MULTIPLIER;

 ath10k_dbg(ar, ATH10K_DBG_HTT, "htt frag desc bank cmd\n");

 ret = ath10k_htc_send(&htt->ar->htc, htt->eid, skb);
 if (ret) {
  ath10k_warn(ar, "failed to send frag desc bank cfg request: %d\n",
       ret);
  dev_kfree_skb_any(skb);
  return ret;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct htt_aggr_conf {int max_num_ampdu_subframes; int max_num_amsdu_subframes; } ;
struct TYPE_2__ {int msg_type; } ;
struct htt_cmd {struct htt_aggr_conf aggr_conf; TYPE_1__ hdr; } ;
struct ath10k_htt {int eid; struct ath10k* ar; } ;
struct ath10k {int htc; } ;


 int ATH10K_DBG_HTT ;
 int EINVAL ;
 int ENOMEM ;
 int HTT_H2T_MSG_TYPE_AGGR_CFG ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int) ;
 struct sk_buff* ath10k_htc_alloc_skb (struct ath10k*,int) ;
 int ath10k_htc_send (int *,int ,struct sk_buff*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int ath10k_htt_h2t_aggr_cfg_msg_32(struct ath10k_htt *htt,
       u8 max_subfrms_ampdu,
       u8 max_subfrms_amsdu)
{
 struct ath10k *ar = htt->ar;
 struct htt_aggr_conf *aggr_conf;
 struct sk_buff *skb;
 struct htt_cmd *cmd;
 int len;
 int ret;



 if (max_subfrms_ampdu == 0 || max_subfrms_ampdu > 64)
  return -EINVAL;

 if (max_subfrms_amsdu == 0 || max_subfrms_amsdu > 31)
  return -EINVAL;

 len = sizeof(cmd->hdr);
 len += sizeof(cmd->aggr_conf);

 skb = ath10k_htc_alloc_skb(ar, len);
 if (!skb)
  return -ENOMEM;

 skb_put(skb, len);
 cmd = (struct htt_cmd *)skb->data;
 cmd->hdr.msg_type = HTT_H2T_MSG_TYPE_AGGR_CFG;

 aggr_conf = &cmd->aggr_conf;
 aggr_conf->max_num_ampdu_subframes = max_subfrms_ampdu;
 aggr_conf->max_num_amsdu_subframes = max_subfrms_amsdu;

 ath10k_dbg(ar, ATH10K_DBG_HTT, "htt h2t aggr cfg msg amsdu %d ampdu %d",
     aggr_conf->max_num_amsdu_subframes,
     aggr_conf->max_num_ampdu_subframes);

 ret = ath10k_htc_send(&htt->ar->htc, htt->eid, skb);
 if (ret) {
  dev_kfree_skb_any(skb);
  return ret;
 }

 return 0;
}

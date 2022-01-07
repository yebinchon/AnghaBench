
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath10k_htt {int prefetch_len; int t2h_msg_types_max; int t2h_msg_types; struct ath10k* ar; } ;
struct ath10k {struct ath10k_htt htt; TYPE_2__* running_fw; } ;
struct TYPE_3__ {int htt_op_version; } ;
struct TYPE_4__ {TYPE_1__ fw_file; } ;
 int EINVAL ;
 int HTT_10X_T2H_NUM_MSGS ;
 int HTT_10_4_T2H_NUM_MSGS ;
 int HTT_MAIN_T2H_NUM_MSGS ;
 int HTT_TLV_T2H_NUM_MSGS ;
 int WARN_ON (int) ;
 int ath10k_htt_set_rx_ops (struct ath10k_htt*) ;
 int ath10k_htt_set_tx_ops (struct ath10k_htt*) ;
 int htt_10_4_t2h_msg_types ;
 int htt_10x_t2h_msg_types ;
 int htt_main_t2h_msg_types ;
 int htt_tlv_t2h_msg_types ;

int ath10k_htt_init(struct ath10k *ar)
{
 struct ath10k_htt *htt = &ar->htt;

 htt->ar = ar;







 htt->prefetch_len =
  36 +
  4 +
  8 +
  2;

 switch (ar->running_fw->fw_file.htt_op_version) {
 case 132:
  ar->htt.t2h_msg_types = htt_10_4_t2h_msg_types;
  ar->htt.t2h_msg_types_max = HTT_10_4_T2H_NUM_MSGS;
  break;
 case 133:
  ar->htt.t2h_msg_types = htt_10x_t2h_msg_types;
  ar->htt.t2h_msg_types_max = HTT_10X_T2H_NUM_MSGS;
  break;
 case 129:
  ar->htt.t2h_msg_types = htt_tlv_t2h_msg_types;
  ar->htt.t2h_msg_types_max = HTT_TLV_T2H_NUM_MSGS;
  break;
 case 131:
  ar->htt.t2h_msg_types = htt_main_t2h_msg_types;
  ar->htt.t2h_msg_types_max = HTT_MAIN_T2H_NUM_MSGS;
  break;
 case 130:
 case 128:
  WARN_ON(1);
  return -EINVAL;
 }
 ath10k_htt_set_tx_ops(htt);
 ath10k_htt_set_rx_ops(htt);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_private {int dummy; } ;
struct mwifiex_ds_get_stats {void* bcn_miss_cnt; void* bcn_rcv_cnt; void** wep_icv_error; void* tx_frame; void* fcs_error; void* mcast_rx_frame; void* rx_frag; void* ack_failure; void* rts_failure; void* rts_success; void* frame_dup; void* multi_retry; void* retry; void* failed; void* mcast_tx_frame; } ;
struct host_cmd_ds_802_11_get_log {int bcn_miss_cnt; int bcn_rcv_cnt; int * wep_icv_err_cnt; int tx_frame; int fcs_error; int mcast_rx_frame; int rx_frag; int ack_failure; int rts_failure; int rts_success; int frame_dup; int multi_retry; int retry; int failed; int mcast_tx_frame; } ;
struct TYPE_2__ {struct host_cmd_ds_802_11_get_log get_log; } ;
struct host_cmd_ds_command {TYPE_1__ params; } ;


 void* le32_to_cpu (int ) ;

__attribute__((used)) static int mwifiex_ret_get_log(struct mwifiex_private *priv,
          struct host_cmd_ds_command *resp,
          struct mwifiex_ds_get_stats *stats)
{
 struct host_cmd_ds_802_11_get_log *get_log =
  &resp->params.get_log;

 if (stats) {
  stats->mcast_tx_frame = le32_to_cpu(get_log->mcast_tx_frame);
  stats->failed = le32_to_cpu(get_log->failed);
  stats->retry = le32_to_cpu(get_log->retry);
  stats->multi_retry = le32_to_cpu(get_log->multi_retry);
  stats->frame_dup = le32_to_cpu(get_log->frame_dup);
  stats->rts_success = le32_to_cpu(get_log->rts_success);
  stats->rts_failure = le32_to_cpu(get_log->rts_failure);
  stats->ack_failure = le32_to_cpu(get_log->ack_failure);
  stats->rx_frag = le32_to_cpu(get_log->rx_frag);
  stats->mcast_rx_frame = le32_to_cpu(get_log->mcast_rx_frame);
  stats->fcs_error = le32_to_cpu(get_log->fcs_error);
  stats->tx_frame = le32_to_cpu(get_log->tx_frame);
  stats->wep_icv_error[0] =
   le32_to_cpu(get_log->wep_icv_err_cnt[0]);
  stats->wep_icv_error[1] =
   le32_to_cpu(get_log->wep_icv_err_cnt[1]);
  stats->wep_icv_error[2] =
   le32_to_cpu(get_log->wep_icv_err_cnt[2]);
  stats->wep_icv_error[3] =
   le32_to_cpu(get_log->wep_icv_err_cnt[3]);
  stats->bcn_rcv_cnt = le32_to_cpu(get_log->bcn_rcv_cnt);
  stats->bcn_miss_cnt = le32_to_cpu(get_log->bcn_miss_cnt);
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_tlv_vdev_stats {int * beacon_rssi_history; int * tx_rate_history; int * num_tx_frames_failures; int * num_tx_frames_retries; int * num_tx_frames; int num_tx_not_acked; int num_rx_discard; int num_rx_err; int num_rts_success; int num_rts_fail; int num_rx_frames; int data_snr; int beacon_snr; int vdev_id; } ;
struct ath10k_fw_stats_vdev {void** beacon_rssi_history; void** tx_rate_history; void** num_tx_frames_failures; void** num_tx_frames_retries; void** num_tx_frames; void* num_tx_not_acked; void* num_rx_discard; void* num_rx_err; void* num_rts_success; void* num_rts_fail; void* num_rx_frames; void* data_snr; void* beacon_snr; void* vdev_id; } ;


 int ARRAY_SIZE (int *) ;
 void* __le32_to_cpu (int ) ;

__attribute__((used)) static void ath10k_wmi_tlv_pull_vdev_stats(const struct wmi_tlv_vdev_stats *src,
        struct ath10k_fw_stats_vdev *dst)
{
 int i;

 dst->vdev_id = __le32_to_cpu(src->vdev_id);
 dst->beacon_snr = __le32_to_cpu(src->beacon_snr);
 dst->data_snr = __le32_to_cpu(src->data_snr);
 dst->num_rx_frames = __le32_to_cpu(src->num_rx_frames);
 dst->num_rts_fail = __le32_to_cpu(src->num_rts_fail);
 dst->num_rts_success = __le32_to_cpu(src->num_rts_success);
 dst->num_rx_err = __le32_to_cpu(src->num_rx_err);
 dst->num_rx_discard = __le32_to_cpu(src->num_rx_discard);
 dst->num_tx_not_acked = __le32_to_cpu(src->num_tx_not_acked);

 for (i = 0; i < ARRAY_SIZE(src->num_tx_frames); i++)
  dst->num_tx_frames[i] =
   __le32_to_cpu(src->num_tx_frames[i]);

 for (i = 0; i < ARRAY_SIZE(src->num_tx_frames_retries); i++)
  dst->num_tx_frames_retries[i] =
   __le32_to_cpu(src->num_tx_frames_retries[i]);

 for (i = 0; i < ARRAY_SIZE(src->num_tx_frames_failures); i++)
  dst->num_tx_frames_failures[i] =
   __le32_to_cpu(src->num_tx_frames_failures[i]);

 for (i = 0; i < ARRAY_SIZE(src->tx_rate_history); i++)
  dst->tx_rate_history[i] =
   __le32_to_cpu(src->tx_rate_history[i]);

 for (i = 0; i < ARRAY_SIZE(src->beacon_rssi_history); i++)
  dst->beacon_rssi_history[i] =
   __le32_to_cpu(src->beacon_rssi_history[i]);
}

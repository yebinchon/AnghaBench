
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k_fw_stats_vdev_extd {int tx_ftm_suc; int tx_ftm_suc_retry; int tx_ftm_fail; int rx_ftmr_cnt; int rx_ftmr_dup_cnt; int rx_iftmr_cnt; int rx_iftmr_dup_cnt; int mpdu_fail_retry; int mpdu_suc_multitry; int mpdu_suc_retry; int mpdu_sw_requeued; int ppdu_nonaggr_cnt; int mpdu_queued; int ppdu_noack; int ppdu_aggr_cnt; int vdev_id; } ;


 int ATH10K_FW_STATS_BUF_SIZE ;
 int MS (int,int ) ;
 int WMI_VDEV_STATS_FTM_COUNT ;
 int WMI_VDEV_STATS_FTM_COUNT_VALID ;
 int scnprintf (char*,int,char*,...) ;

__attribute__((used)) static void
ath10k_wmi_fw_vdev_stats_extd_fill(const struct ath10k_fw_stats_vdev_extd *vdev,
       char *buf, u32 *length)
{
 u32 len = *length;
 u32 buf_len = ATH10K_FW_STATS_BUF_SIZE;
 u32 val;

 len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
    "vdev id", vdev->vdev_id);
 len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
    "ppdu aggr count", vdev->ppdu_aggr_cnt);
 len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
    "ppdu noack", vdev->ppdu_noack);
 len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
    "mpdu queued", vdev->mpdu_queued);
 len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
    "ppdu nonaggr count", vdev->ppdu_nonaggr_cnt);
 len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
    "mpdu sw requeued", vdev->mpdu_sw_requeued);
 len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
    "mpdu success retry", vdev->mpdu_suc_retry);
 len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
    "mpdu success multitry", vdev->mpdu_suc_multitry);
 len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
    "mpdu fail retry", vdev->mpdu_fail_retry);
 val = vdev->tx_ftm_suc;
 if (val & WMI_VDEV_STATS_FTM_COUNT_VALID)
  len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
     "tx ftm success",
     MS(val, WMI_VDEV_STATS_FTM_COUNT));
 val = vdev->tx_ftm_suc_retry;
 if (val & WMI_VDEV_STATS_FTM_COUNT_VALID)
  len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
     "tx ftm success retry",
     MS(val, WMI_VDEV_STATS_FTM_COUNT));
 val = vdev->tx_ftm_fail;
 if (val & WMI_VDEV_STATS_FTM_COUNT_VALID)
  len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
     "tx ftm fail",
     MS(val, WMI_VDEV_STATS_FTM_COUNT));
 val = vdev->rx_ftmr_cnt;
 if (val & WMI_VDEV_STATS_FTM_COUNT_VALID)
  len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
     "rx ftm request count",
     MS(val, WMI_VDEV_STATS_FTM_COUNT));
 val = vdev->rx_ftmr_dup_cnt;
 if (val & WMI_VDEV_STATS_FTM_COUNT_VALID)
  len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
     "rx ftm request dup count",
     MS(val, WMI_VDEV_STATS_FTM_COUNT));
 val = vdev->rx_iftmr_cnt;
 if (val & WMI_VDEV_STATS_FTM_COUNT_VALID)
  len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
     "rx initial ftm req count",
     MS(val, WMI_VDEV_STATS_FTM_COUNT));
 val = vdev->rx_iftmr_dup_cnt;
 if (val & WMI_VDEV_STATS_FTM_COUNT_VALID)
  len += scnprintf(buf + len, buf_len - len, "%30s %u\n",
     "rx initial ftm req dup cnt",
     MS(val, WMI_VDEV_STATS_FTM_COUNT));
 len += scnprintf(buf + len, buf_len - len, "\n");

 *length = len;
}

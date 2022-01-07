
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k_fw_stats_pdev {int phy_err_count; int cycle_count; int rx_clear_count; int rx_frame_count; int tx_frame_count; int chan_tx_power; int ch_noise_floor; } ;


 int ATH10K_FW_STATS_BUF_SIZE ;
 int scnprintf (char*,int,char*,...) ;

__attribute__((used)) static void
ath10k_wmi_fw_pdev_base_stats_fill(const struct ath10k_fw_stats_pdev *pdev,
       char *buf, u32 *length)
{
 u32 len = *length;
 u32 buf_len = ATH10K_FW_STATS_BUF_SIZE;

 len += scnprintf(buf + len, buf_len - len, "\n");
 len += scnprintf(buf + len, buf_len - len, "%30s\n",
   "ath10k PDEV stats");
 len += scnprintf(buf + len, buf_len - len, "%30s\n\n",
   "=================");

 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
   "Channel noise floor", pdev->ch_noise_floor);
 len += scnprintf(buf + len, buf_len - len, "%30s %10u\n",
   "Channel TX power", pdev->chan_tx_power);
 len += scnprintf(buf + len, buf_len - len, "%30s %10u\n",
   "TX frame count", pdev->tx_frame_count);
 len += scnprintf(buf + len, buf_len - len, "%30s %10u\n",
   "RX frame count", pdev->rx_frame_count);
 len += scnprintf(buf + len, buf_len - len, "%30s %10u\n",
   "RX clear count", pdev->rx_clear_count);
 len += scnprintf(buf + len, buf_len - len, "%30s %10u\n",
   "Cycle count", pdev->cycle_count);
 len += scnprintf(buf + len, buf_len - len, "%30s %10u\n",
   "PHY error count", pdev->phy_err_count);

 *length = len;
}

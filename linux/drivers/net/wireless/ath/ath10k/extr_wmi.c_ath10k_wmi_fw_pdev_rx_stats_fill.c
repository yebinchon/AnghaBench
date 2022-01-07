
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k_fw_stats_pdev {int mpdu_errs; int phy_err_drop; int phy_errs; int oversize_amsdu; int loc_mpdus; int loc_msdus; int htt_mpdus; int htt_msdus; int r3_frags; int r2_frags; int r1_frags; int r0_frags; int status_rcvd; int mid_ppdu_route_change; } ;


 int ATH10K_FW_STATS_BUF_SIZE ;
 int scnprintf (char*,int,char*,char*,...) ;

__attribute__((used)) static void
ath10k_wmi_fw_pdev_rx_stats_fill(const struct ath10k_fw_stats_pdev *pdev,
     char *buf, u32 *length)
{
 u32 len = *length;
 u32 buf_len = ATH10K_FW_STATS_BUF_SIZE;

 len += scnprintf(buf + len, buf_len - len, "\n%30s\n",
    "ath10k PDEV RX stats");
 len += scnprintf(buf + len, buf_len - len, "%30s\n\n",
     "=================");

 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "Mid PPDU route change",
    pdev->mid_ppdu_route_change);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "Tot. number of statuses", pdev->status_rcvd);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "Extra frags on rings 0", pdev->r0_frags);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "Extra frags on rings 1", pdev->r1_frags);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "Extra frags on rings 2", pdev->r2_frags);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "Extra frags on rings 3", pdev->r3_frags);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "MSDUs delivered to HTT", pdev->htt_msdus);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "MPDUs delivered to HTT", pdev->htt_mpdus);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "MSDUs delivered to stack", pdev->loc_msdus);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "MPDUs delivered to stack", pdev->loc_mpdus);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "Oversized AMSUs", pdev->oversize_amsdu);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "PHY errors", pdev->phy_errs);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "PHY errors drops", pdev->phy_err_drop);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "MPDU errors (FCS, MIC, ENC)", pdev->mpdu_errs);
 *length = len;
}

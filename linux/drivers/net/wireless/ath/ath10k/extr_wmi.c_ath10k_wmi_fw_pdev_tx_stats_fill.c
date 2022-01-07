
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k_fw_stats_pdev {int txop_ovf; int phy_underrun; int pdev_resets; int pdev_tx_timeout; int pdev_cont_xretry; int illgl_rate_phy_err; int sw_retry_failure; int self_triggers; int data_rc; int tx_ko; int mpdus_requed; int tx_abort; int underrun; int hw_reaped; int hw_queued; int local_freed; int local_enqued; int wmm_drop; int mpdu_enqued; int msdu_enqued; int comp_delivered; int comp_queued; } ;


 int ATH10K_FW_STATS_BUF_SIZE ;
 int scnprintf (char*,int,char*,char*,...) ;

__attribute__((used)) static void
ath10k_wmi_fw_pdev_tx_stats_fill(const struct ath10k_fw_stats_pdev *pdev,
     char *buf, u32 *length)
{
 u32 len = *length;
 u32 buf_len = ATH10K_FW_STATS_BUF_SIZE;

 len += scnprintf(buf + len, buf_len - len, "\n%30s\n",
    "ath10k PDEV TX stats");
 len += scnprintf(buf + len, buf_len - len, "%30s\n\n",
     "=================");

 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "HTT cookies queued", pdev->comp_queued);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "HTT cookies disp.", pdev->comp_delivered);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "MSDU queued", pdev->msdu_enqued);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "MPDU queued", pdev->mpdu_enqued);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "MSDUs dropped", pdev->wmm_drop);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "Local enqued", pdev->local_enqued);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "Local freed", pdev->local_freed);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "HW queued", pdev->hw_queued);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "PPDUs reaped", pdev->hw_reaped);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "Num underruns", pdev->underrun);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "PPDUs cleaned", pdev->tx_abort);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "MPDUs requed", pdev->mpdus_requed);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "Excessive retries", pdev->tx_ko);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "HW rate", pdev->data_rc);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "Sched self triggers", pdev->self_triggers);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "Dropped due to SW retries",
    pdev->sw_retry_failure);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "Illegal rate phy errors",
    pdev->illgl_rate_phy_err);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "Pdev continuous xretry", pdev->pdev_cont_xretry);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "TX timeout", pdev->pdev_tx_timeout);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "PDEV resets", pdev->pdev_resets);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "PHY underrun", pdev->phy_underrun);
 len += scnprintf(buf + len, buf_len - len, "%30s %10d\n",
    "MPDU is more than txop limit", pdev->txop_ovf);
 *length = len;
}

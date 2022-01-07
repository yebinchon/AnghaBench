
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k_fw_stats_pdev {int mib_int_count; int no_beacons; int fcs_bad; int rts_good; int rts_bad; } ;


 int ATH10K_FW_STATS_BUF_SIZE ;
 int scnprintf (char*,int,char*,...) ;

__attribute__((used)) static void
ath10k_wmi_fw_pdev_extra_stats_fill(const struct ath10k_fw_stats_pdev *pdev,
        char *buf, u32 *length)
{
 u32 len = *length;
 u32 buf_len = ATH10K_FW_STATS_BUF_SIZE;

 len += scnprintf(buf + len, buf_len - len, "%30s %10u\n",
   "RTS bad count", pdev->rts_bad);
 len += scnprintf(buf + len, buf_len - len, "%30s %10u\n",
   "RTS good count", pdev->rts_good);
 len += scnprintf(buf + len, buf_len - len, "%30s %10u\n",
   "FCS bad count", pdev->fcs_bad);
 len += scnprintf(buf + len, buf_len - len, "%30s %10u\n",
   "No beacon count", pdev->no_beacons);
 len += scnprintf(buf + len, buf_len - len, "%30s %10u\n",
   "MIB int count", pdev->mib_int_count);

 len += scnprintf(buf + len, buf_len - len, "\n");
 *length = len;
}

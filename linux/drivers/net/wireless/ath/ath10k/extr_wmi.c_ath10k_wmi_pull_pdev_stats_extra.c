
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_pdev_stats_extra {int mib_int_count; int no_beacons; int fcs_bad; int rts_good; int rts_bad; int ack_rx_bad; } ;
struct ath10k_fw_stats_pdev {void* mib_int_count; void* no_beacons; void* fcs_bad; void* rts_good; void* rts_bad; void* ack_rx_bad; } ;


 void* __le32_to_cpu (int ) ;

void ath10k_wmi_pull_pdev_stats_extra(const struct wmi_pdev_stats_extra *src,
          struct ath10k_fw_stats_pdev *dst)
{
 dst->ack_rx_bad = __le32_to_cpu(src->ack_rx_bad);
 dst->rts_bad = __le32_to_cpu(src->rts_bad);
 dst->rts_good = __le32_to_cpu(src->rts_good);
 dst->fcs_bad = __le32_to_cpu(src->fcs_bad);
 dst->no_beacons = __le32_to_cpu(src->no_beacons);
 dst->mib_int_count = __le32_to_cpu(src->mib_int_count);
}

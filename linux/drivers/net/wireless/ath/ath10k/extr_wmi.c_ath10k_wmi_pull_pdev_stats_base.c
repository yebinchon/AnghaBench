
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_pdev_stats_base {int chan_tx_pwr; int phy_err_count; int cycle_count; int rx_clear_count; int rx_frame_count; int tx_frame_count; int chan_nf; } ;
struct ath10k_fw_stats_pdev {void* chan_tx_power; void* phy_err_count; void* cycle_count; void* rx_clear_count; void* rx_frame_count; void* tx_frame_count; void* ch_noise_floor; } ;


 void* __le32_to_cpu (int ) ;

void ath10k_wmi_pull_pdev_stats_base(const struct wmi_pdev_stats_base *src,
         struct ath10k_fw_stats_pdev *dst)
{
 dst->ch_noise_floor = __le32_to_cpu(src->chan_nf);
 dst->tx_frame_count = __le32_to_cpu(src->tx_frame_count);
 dst->rx_frame_count = __le32_to_cpu(src->rx_frame_count);
 dst->rx_clear_count = __le32_to_cpu(src->rx_clear_count);
 dst->cycle_count = __le32_to_cpu(src->cycle_count);
 dst->phy_err_count = __le32_to_cpu(src->phy_err_count);
 dst->chan_tx_power = __le32_to_cpu(src->chan_tx_pwr);
}

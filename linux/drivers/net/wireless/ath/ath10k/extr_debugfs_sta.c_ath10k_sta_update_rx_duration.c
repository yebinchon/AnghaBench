
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_fw_stats {scalar_t__ extended; } ;
struct ath10k {int dummy; } ;


 int ath10k_sta_update_extd_stats_rx_duration (struct ath10k*,struct ath10k_fw_stats*) ;
 int ath10k_sta_update_stats_rx_duration (struct ath10k*,struct ath10k_fw_stats*) ;

void ath10k_sta_update_rx_duration(struct ath10k *ar,
       struct ath10k_fw_stats *stats)
{
 if (stats->extended)
  ath10k_sta_update_extd_stats_rx_duration(ar, stats);
 else
  ath10k_sta_update_stats_rx_duration(ar, stats);
}

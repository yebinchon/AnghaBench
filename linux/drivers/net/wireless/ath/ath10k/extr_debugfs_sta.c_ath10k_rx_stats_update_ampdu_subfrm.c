
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k_sta_tid_stats {int * rx_pkt_ampdu; } ;
struct ath10k {int dummy; } ;


 size_t ATH10K_AMPDU_SUBFRM_NUM_10 ;
 size_t ATH10K_AMPDU_SUBFRM_NUM_20 ;
 size_t ATH10K_AMPDU_SUBFRM_NUM_30 ;
 size_t ATH10K_AMPDU_SUBFRM_NUM_40 ;
 size_t ATH10K_AMPDU_SUBFRM_NUM_50 ;
 size_t ATH10K_AMPDU_SUBFRM_NUM_60 ;
 size_t ATH10K_AMPDU_SUBFRM_NUM_MORE ;

__attribute__((used)) static void ath10k_rx_stats_update_ampdu_subfrm(struct ath10k *ar,
      struct ath10k_sta_tid_stats *stats,
      u32 mpdu_count)
{
 if (mpdu_count <= 10)
  stats->rx_pkt_ampdu[ATH10K_AMPDU_SUBFRM_NUM_10]++;
 else if (mpdu_count <= 20)
  stats->rx_pkt_ampdu[ATH10K_AMPDU_SUBFRM_NUM_20]++;
 else if (mpdu_count <= 30)
  stats->rx_pkt_ampdu[ATH10K_AMPDU_SUBFRM_NUM_30]++;
 else if (mpdu_count <= 40)
  stats->rx_pkt_ampdu[ATH10K_AMPDU_SUBFRM_NUM_40]++;
 else if (mpdu_count <= 50)
  stats->rx_pkt_ampdu[ATH10K_AMPDU_SUBFRM_NUM_50]++;
 else if (mpdu_count <= 60)
  stats->rx_pkt_ampdu[ATH10K_AMPDU_SUBFRM_NUM_60]++;
 else if (mpdu_count > 60)
  stats->rx_pkt_ampdu[ATH10K_AMPDU_SUBFRM_NUM_MORE]++;
}

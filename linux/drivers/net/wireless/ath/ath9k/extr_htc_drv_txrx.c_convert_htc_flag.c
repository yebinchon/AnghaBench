
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_rx_status {int enc_flags; int bw; } ;
struct ath_htc_rx_status {int rs_flags; } ;


 int ATH9K_RX_2040 ;
 int ATH9K_RX_GI ;
 int RATE_INFO_BW_20 ;
 int RATE_INFO_BW_40 ;
 int RX_ENC_FLAG_SHORT_GI ;

__attribute__((used)) static inline void convert_htc_flag(struct ath_rx_status *rx_stats,
       struct ath_htc_rx_status *rxstatus)
{
 rx_stats->enc_flags = 0;
 rx_stats->bw = RATE_INFO_BW_20;
 if (rxstatus->rs_flags & ATH9K_RX_2040)
  rx_stats->bw = RATE_INFO_BW_40;
 if (rxstatus->rs_flags & ATH9K_RX_GI)
  rx_stats->enc_flags |= RX_ENC_FLAG_SHORT_GI;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct htt_rx_indication_mpdu_range {int dummy; } ;
struct ath10k {int dummy; } ;



__attribute__((used)) static inline
void ath10k_sta_update_rx_tid_stats_ampdu(struct ath10k *ar,
       u16 peer_id, u8 tid,
       struct htt_rx_indication_mpdu_range *ranges,
       int num_ranges)
{
}

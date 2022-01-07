
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath10k {int dummy; } ;
typedef enum ath10k_pkt_rx_err { ____Placeholder_ath10k_pkt_rx_err } ath10k_pkt_rx_err ;



__attribute__((used)) static inline
void ath10k_sta_update_rx_tid_stats(struct ath10k *ar, u8 *first_hdr,
        unsigned long num_msdus,
        enum ath10k_pkt_rx_err err,
        unsigned long unchain_cnt,
        unsigned long drop_cnt,
        unsigned long drop_cnt_filter,
        unsigned long queued_msdus)
{
}

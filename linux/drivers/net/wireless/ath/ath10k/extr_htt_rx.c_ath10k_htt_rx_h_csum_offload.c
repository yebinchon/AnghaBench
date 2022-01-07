
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ip_summed; } ;


 int ath10k_htt_rx_get_csum_state (struct sk_buff*) ;

__attribute__((used)) static void ath10k_htt_rx_h_csum_offload(struct sk_buff *msdu)
{
 msdu->ip_summed = ath10k_htt_rx_get_csum_state(msdu);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_htt {int dummy; } ;


 int ath10k_htt_tx_destroy (struct ath10k_htt*) ;
 int ath10k_htt_tx_stop (struct ath10k_htt*) ;

void ath10k_htt_tx_free(struct ath10k_htt *htt)
{
 ath10k_htt_tx_stop(htt);
 ath10k_htt_tx_destroy(htt);
}

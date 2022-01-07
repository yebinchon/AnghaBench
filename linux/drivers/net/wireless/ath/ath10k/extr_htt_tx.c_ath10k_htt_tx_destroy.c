
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_htt {int tx_mem_allocated; } ;


 int ath10k_htt_free_frag_desc (struct ath10k_htt*) ;
 int ath10k_htt_free_txbuff (struct ath10k_htt*) ;
 int ath10k_htt_tx_free_txdone_fifo (struct ath10k_htt*) ;
 int ath10k_htt_tx_free_txq (struct ath10k_htt*) ;

void ath10k_htt_tx_destroy(struct ath10k_htt *htt)
{
 if (!htt->tx_mem_allocated)
  return;

 ath10k_htt_free_txbuff(htt);
 ath10k_htt_tx_free_txq(htt);
 ath10k_htt_free_frag_desc(htt);
 ath10k_htt_tx_free_txdone_fifo(htt);
 htt->tx_mem_allocated = 0;
}

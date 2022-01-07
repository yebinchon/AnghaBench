
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_htt {int txdone_fifo; } ;


 int WARN_ON (int) ;
 int kfifo_free (int *) ;
 int kfifo_is_empty (int *) ;

__attribute__((used)) static void ath10k_htt_tx_free_txdone_fifo(struct ath10k_htt *htt)
{
 WARN_ON(!kfifo_is_empty(&htt->txdone_fifo));
 kfifo_free(&htt->txdone_fifo);
}

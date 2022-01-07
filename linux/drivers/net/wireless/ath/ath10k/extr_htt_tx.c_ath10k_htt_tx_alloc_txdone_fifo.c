
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_htt {int txdone_fifo; int max_num_pending_tx; } ;


 int GFP_KERNEL ;
 int kfifo_alloc (int *,size_t,int ) ;
 size_t roundup_pow_of_two (int ) ;

__attribute__((used)) static int ath10k_htt_tx_alloc_txdone_fifo(struct ath10k_htt *htt)
{
 int ret;
 size_t size;

 size = roundup_pow_of_two(htt->max_num_pending_tx);
 ret = kfifo_alloc(&htt->txdone_fifo, size, GFP_KERNEL);
 return ret;
}

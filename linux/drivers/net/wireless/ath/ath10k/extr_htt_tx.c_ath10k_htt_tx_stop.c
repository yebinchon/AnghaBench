
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_htt {int pending_tx; int ar; } ;


 int ath10k_htt_tx_clean_up_pending ;
 int idr_destroy (int *) ;
 int idr_for_each (int *,int ,int ) ;

void ath10k_htt_tx_stop(struct ath10k_htt *htt)
{
 idr_for_each(&htt->pending_tx, ath10k_htt_tx_clean_up_pending, htt->ar);
 idr_destroy(&htt->pending_tx);
}

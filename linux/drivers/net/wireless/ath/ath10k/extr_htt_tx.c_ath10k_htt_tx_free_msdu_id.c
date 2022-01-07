
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ath10k_htt {int pending_tx; int tx_lock; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_HTT ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ) ;
 int idr_remove (int *,int ) ;
 int lockdep_assert_held (int *) ;

void ath10k_htt_tx_free_msdu_id(struct ath10k_htt *htt, u16 msdu_id)
{
 struct ath10k *ar = htt->ar;

 lockdep_assert_held(&htt->tx_lock);

 ath10k_dbg(ar, ATH10K_DBG_HTT, "htt tx free msdu_id %hu\n", msdu_id);

 idr_remove(&htt->pending_tx, msdu_id);
}

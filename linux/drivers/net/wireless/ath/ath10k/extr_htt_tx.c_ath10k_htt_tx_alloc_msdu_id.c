
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ath10k_htt {int tx_lock; int max_num_pending_tx; int pending_tx; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_HTT ;
 int GFP_ATOMIC ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 int idr_alloc (int *,struct sk_buff*,int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int ath10k_htt_tx_alloc_msdu_id(struct ath10k_htt *htt, struct sk_buff *skb)
{
 struct ath10k *ar = htt->ar;
 int ret;

 spin_lock_bh(&htt->tx_lock);
 ret = idr_alloc(&htt->pending_tx, skb, 0,
   htt->max_num_pending_tx, GFP_ATOMIC);
 spin_unlock_bh(&htt->tx_lock);

 ath10k_dbg(ar, ATH10K_DBG_HTT, "htt tx alloc msdu_id %d\n", ret);

 return ret;
}

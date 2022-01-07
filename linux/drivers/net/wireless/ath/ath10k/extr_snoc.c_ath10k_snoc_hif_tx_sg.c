
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ath10k_snoc_pipe {struct ath10k_ce_pipe* ce_hdl; } ;
struct ath10k_snoc {struct ath10k_snoc_pipe* pipe_info; } ;
struct ath10k_hif_sg_item {int transfer_id; int len; int paddr; int transfer_context; } ;
struct ath10k_ce_pipe {int dummy; } ;
struct ath10k_ce {int ce_lock; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_SNOC ;
 int CE_SEND_FLAG_GATHER ;
 int __ath10k_ce_send_revert (struct ath10k_ce_pipe*) ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int ath10k_ce_send_nolock (struct ath10k_ce_pipe*,int ,int ,int ,int ,int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int *,int ,int) ;
 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ath10k_snoc_hif_tx_sg(struct ath10k *ar, u8 pipe_id,
     struct ath10k_hif_sg_item *items, int n_items)
{
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 struct ath10k_snoc_pipe *snoc_pipe;
 struct ath10k_ce_pipe *ce_pipe;
 int err, i = 0;

 snoc_pipe = &ar_snoc->pipe_info[pipe_id];
 ce_pipe = snoc_pipe->ce_hdl;
 spin_lock_bh(&ce->ce_lock);

 for (i = 0; i < n_items - 1; i++) {
  ath10k_dbg(ar, ATH10K_DBG_SNOC,
      "snoc tx item %d paddr %pad len %d n_items %d\n",
      i, &items[i].paddr, items[i].len, n_items);

  err = ath10k_ce_send_nolock(ce_pipe,
         items[i].transfer_context,
         items[i].paddr,
         items[i].len,
         items[i].transfer_id,
         CE_SEND_FLAG_GATHER);
  if (err)
   goto err;
 }

 ath10k_dbg(ar, ATH10K_DBG_SNOC,
     "snoc tx item %d paddr %pad len %d n_items %d\n",
     i, &items[i].paddr, items[i].len, n_items);

 err = ath10k_ce_send_nolock(ce_pipe,
        items[i].transfer_context,
        items[i].paddr,
        items[i].len,
        items[i].transfer_id,
        0);
 if (err)
  goto err;

 spin_unlock_bh(&ce->ce_lock);

 return 0;

err:
 for (; i > 0; i--)
  __ath10k_ce_send_revert(ce_pipe);

 spin_unlock_bh(&ce->ce_lock);
 return err;
}

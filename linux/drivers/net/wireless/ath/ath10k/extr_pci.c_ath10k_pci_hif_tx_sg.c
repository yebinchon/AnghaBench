
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ath10k_pci_pipe {struct ath10k_ce_pipe* ce_hdl; } ;
struct ath10k_pci {struct ath10k_pci_pipe* pipe_info; } ;
struct ath10k_hif_sg_item {int transfer_id; int len; int paddr; int transfer_context; int vaddr; } ;
struct ath10k_ce_ring {unsigned int nentries_mask; unsigned int sw_index; unsigned int write_index; } ;
struct ath10k_ce_pipe {struct ath10k_ce_ring* src_ring; } ;
struct ath10k_ce {int ce_lock; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_PCI ;
 int ATH10K_DBG_PCI_DUMP ;
 int CE_RING_DELTA (unsigned int,unsigned int,unsigned int) ;
 int CE_SEND_FLAG_GATHER ;
 int ENOBUFS ;
 int __ath10k_ce_send_revert (struct ath10k_ce_pipe*) ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int ath10k_ce_send_nolock (struct ath10k_ce_pipe*,int ,int ,int ,int ,int ) ;
 int ath10k_dbg (struct ath10k*,int ,char*,int,int *,int ,int) ;
 int ath10k_dbg_dump (struct ath10k*,int ,int *,char*,int ,int ) ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

int ath10k_pci_hif_tx_sg(struct ath10k *ar, u8 pipe_id,
    struct ath10k_hif_sg_item *items, int n_items)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 struct ath10k_pci_pipe *pci_pipe = &ar_pci->pipe_info[pipe_id];
 struct ath10k_ce_pipe *ce_pipe = pci_pipe->ce_hdl;
 struct ath10k_ce_ring *src_ring = ce_pipe->src_ring;
 unsigned int nentries_mask;
 unsigned int sw_index;
 unsigned int write_index;
 int err, i = 0;

 spin_lock_bh(&ce->ce_lock);

 nentries_mask = src_ring->nentries_mask;
 sw_index = src_ring->sw_index;
 write_index = src_ring->write_index;

 if (unlikely(CE_RING_DELTA(nentries_mask,
       write_index, sw_index - 1) < n_items)) {
  err = -ENOBUFS;
  goto err;
 }

 for (i = 0; i < n_items - 1; i++) {
  ath10k_dbg(ar, ATH10K_DBG_PCI,
      "pci tx item %d paddr %pad len %d n_items %d\n",
      i, &items[i].paddr, items[i].len, n_items);
  ath10k_dbg_dump(ar, ATH10K_DBG_PCI_DUMP, ((void*)0), "pci tx data: ",
    items[i].vaddr, items[i].len);

  err = ath10k_ce_send_nolock(ce_pipe,
         items[i].transfer_context,
         items[i].paddr,
         items[i].len,
         items[i].transfer_id,
         CE_SEND_FLAG_GATHER);
  if (err)
   goto err;
 }



 ath10k_dbg(ar, ATH10K_DBG_PCI,
     "pci tx item %d paddr %pad len %d n_items %d\n",
     i, &items[i].paddr, items[i].len, n_items);
 ath10k_dbg_dump(ar, ATH10K_DBG_PCI_DUMP, ((void*)0), "pci tx data: ",
   items[i].vaddr, items[i].len);

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

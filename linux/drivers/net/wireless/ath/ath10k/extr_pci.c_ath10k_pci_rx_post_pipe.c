
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_pci_pipe {scalar_t__ buf_sz; struct ath10k_ce_pipe* ce_hdl; struct ath10k* hif_ce_state; } ;
struct ath10k_pci {int rx_post_retry; } ;
struct ath10k_ce_pipe {int dest_ring; } ;
struct ath10k_ce {int ce_lock; } ;
struct ath10k {int dummy; } ;


 scalar_t__ ATH10K_PCI_RX_POST_RETRY_MS ;
 int ENOSPC ;
 int __ath10k_ce_rx_num_free_bufs (struct ath10k_ce_pipe*) ;
 int __ath10k_pci_rx_post_buf (struct ath10k_pci_pipe*) ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath10k_pci_rx_post_pipe(struct ath10k_pci_pipe *pipe)
{
 struct ath10k *ar = pipe->hif_ce_state;
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);
 struct ath10k_ce *ce = ath10k_ce_priv(ar);
 struct ath10k_ce_pipe *ce_pipe = pipe->ce_hdl;
 int ret, num;

 if (pipe->buf_sz == 0)
  return;

 if (!ce_pipe->dest_ring)
  return;

 spin_lock_bh(&ce->ce_lock);
 num = __ath10k_ce_rx_num_free_bufs(ce_pipe);
 spin_unlock_bh(&ce->ce_lock);

 while (num >= 0) {
  ret = __ath10k_pci_rx_post_buf(pipe);
  if (ret) {
   if (ret == -ENOSPC)
    break;
   ath10k_warn(ar, "failed to post pci rx buf: %d\n", ret);
   mod_timer(&ar_pci->rx_post_retry, jiffies +
      ATH10K_PCI_RX_POST_RETRY_MS);
   break;
  }
  num--;
 }
}

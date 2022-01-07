
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_pci {scalar_t__ ps_wake_refcount; int ps_lock; } ;
struct ath10k {int napi; } ;


 int ATH10K_DBG_BOOT ;
 int WARN_ON (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_pci_flush (struct ath10k*) ;
 int ath10k_pci_irq_disable (struct ath10k*) ;
 int ath10k_pci_irq_sync (struct ath10k*) ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int ath10k_pci_safe_chip_reset (struct ath10k*) ;
 int napi_disable (int *) ;
 int napi_synchronize (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ath10k_pci_hif_stop(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);
 unsigned long flags;

 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot hif stop\n");

 ath10k_pci_irq_disable(ar);
 ath10k_pci_irq_sync(ar);
 napi_synchronize(&ar->napi);
 napi_disable(&ar->napi);
 ath10k_pci_safe_chip_reset(ar);

 ath10k_pci_flush(ar);

 spin_lock_irqsave(&ar_pci->ps_lock, flags);
 WARN_ON(ar_pci->ps_wake_refcount > 0);
 spin_unlock_irqrestore(&ar_pci->ps_lock, flags);
}

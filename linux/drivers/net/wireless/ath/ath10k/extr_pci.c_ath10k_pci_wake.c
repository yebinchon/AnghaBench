
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_pci {scalar_t__ pci_ps; scalar_t__ ps_wake_refcount; int ps_awake; int ps_lock; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_PCI_PS ;
 int WARN_ON (int) ;
 int __ath10k_pci_wake (struct ath10k*) ;
 int ath10k_dbg (struct ath10k*,int ,char*,scalar_t__,int) ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int ath10k_pci_wake_wait (struct ath10k*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ath10k_pci_wake(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);
 unsigned long flags;
 int ret = 0;

 if (ar_pci->pci_ps == 0)
  return ret;

 spin_lock_irqsave(&ar_pci->ps_lock, flags);

 ath10k_dbg(ar, ATH10K_DBG_PCI_PS, "pci ps wake refcount %lu awake %d\n",
     ar_pci->ps_wake_refcount, ar_pci->ps_awake);




 if (!ar_pci->ps_awake) {
  __ath10k_pci_wake(ar);

  ret = ath10k_pci_wake_wait(ar);
  if (ret == 0)
   ar_pci->ps_awake = 1;
 }

 if (ret == 0) {
  ar_pci->ps_wake_refcount++;
  WARN_ON(ar_pci->ps_wake_refcount == 0);
 }

 spin_unlock_irqrestore(&ar_pci->ps_lock, flags);

 return ret;
}

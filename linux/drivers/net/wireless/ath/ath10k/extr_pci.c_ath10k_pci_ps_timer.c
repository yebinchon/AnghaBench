
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ath10k_pci {scalar_t__ ps_wake_refcount; int ps_lock; int ps_awake; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_PCI_PS ;
 int __ath10k_pci_sleep (struct ath10k*) ;
 struct ath10k_pci* ar_pci ;
 int ath10k_dbg (struct ath10k*,int ,char*,scalar_t__,int ) ;
 struct ath10k_pci* from_timer (int ,struct timer_list*,int ) ;
 int ps_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ath10k_pci_ps_timer(struct timer_list *t)
{
 struct ath10k_pci *ar_pci = from_timer(ar_pci, t, ps_timer);
 struct ath10k *ar = ar_pci->ar;
 unsigned long flags;

 spin_lock_irqsave(&ar_pci->ps_lock, flags);

 ath10k_dbg(ar, ATH10K_DBG_PCI_PS, "pci ps timer refcount %lu awake %d\n",
     ar_pci->ps_wake_refcount, ar_pci->ps_awake);

 if (ar_pci->ps_wake_refcount > 0)
  goto skip;

 __ath10k_pci_sleep(ar);

skip:
 spin_unlock_irqrestore(&ar_pci->ps_lock, flags);
}

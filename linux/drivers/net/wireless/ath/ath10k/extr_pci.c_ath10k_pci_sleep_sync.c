
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_pci {scalar_t__ pci_ps; scalar_t__ ps_wake_refcount; int ps_lock; int ps_timer; } ;
struct ath10k {int dummy; } ;


 int WARN_ON (int) ;
 int __ath10k_pci_sleep (struct ath10k*) ;
 int ath10k_pci_force_sleep (struct ath10k*) ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int del_timer_sync (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ath10k_pci_sleep_sync(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);
 unsigned long flags;

 if (ar_pci->pci_ps == 0) {
  ath10k_pci_force_sleep(ar);
  return;
 }

 del_timer_sync(&ar_pci->ps_timer);

 spin_lock_irqsave(&ar_pci->ps_lock, flags);
 WARN_ON(ar_pci->ps_wake_refcount > 0);
 __ath10k_pci_sleep(ar);
 spin_unlock_irqrestore(&ar_pci->ps_lock, flags);
}

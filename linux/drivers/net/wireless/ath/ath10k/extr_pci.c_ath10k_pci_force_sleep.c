
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_pci {int ps_awake; int ps_lock; scalar_t__ mem; } ;
struct ath10k {int dummy; } ;


 scalar_t__ PCIE_LOCAL_BASE_ADDRESS ;
 scalar_t__ PCIE_SOC_WAKE_ADDRESS ;
 int PCIE_SOC_WAKE_RESET ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int iowrite32 (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ath10k_pci_force_sleep(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);
 unsigned long flags;

 spin_lock_irqsave(&ar_pci->ps_lock, flags);

 iowrite32(PCIE_SOC_WAKE_RESET,
    ar_pci->mem + PCIE_LOCAL_BASE_ADDRESS +
    PCIE_SOC_WAKE_ADDRESS);
 ar_pci->ps_awake = 0;

 spin_unlock_irqrestore(&ar_pci->ps_lock, flags);
}

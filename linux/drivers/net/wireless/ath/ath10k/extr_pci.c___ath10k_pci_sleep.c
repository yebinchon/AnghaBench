
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_pci {int ps_awake; scalar_t__ mem; int ps_wake_refcount; int ps_lock; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_PCI_PS ;
 scalar_t__ PCIE_LOCAL_BASE_ADDRESS ;
 scalar_t__ PCIE_SOC_WAKE_ADDRESS ;
 int PCIE_SOC_WAKE_RESET ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ,int) ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int iowrite32 (int ,scalar_t__) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void __ath10k_pci_sleep(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);

 lockdep_assert_held(&ar_pci->ps_lock);

 ath10k_dbg(ar, ATH10K_DBG_PCI_PS, "pci ps sleep reg refcount %lu awake %d\n",
     ar_pci->ps_wake_refcount, ar_pci->ps_awake);

 iowrite32(PCIE_SOC_WAKE_RESET,
    ar_pci->mem + PCIE_LOCAL_BASE_ADDRESS +
    PCIE_SOC_WAKE_ADDRESS);
 ar_pci->ps_awake = 0;
}

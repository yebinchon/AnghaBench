
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ath10k_pci {int dummy; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_PCI ;
 int ath10k_core_destroy (struct ath10k*) ;
 int ath10k_core_unregister (struct ath10k*) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_pci_deinit_irq (struct ath10k*) ;
 int ath10k_pci_free_irq (struct ath10k*) ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int ath10k_pci_release (struct ath10k*) ;
 int ath10k_pci_release_resource (struct ath10k*) ;
 int ath10k_pci_sleep_sync (struct ath10k*) ;
 struct ath10k* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static void ath10k_pci_remove(struct pci_dev *pdev)
{
 struct ath10k *ar = pci_get_drvdata(pdev);
 struct ath10k_pci *ar_pci;

 ath10k_dbg(ar, ATH10K_DBG_PCI, "pci remove\n");

 if (!ar)
  return;

 ar_pci = ath10k_pci_priv(ar);

 if (!ar_pci)
  return;

 ath10k_core_unregister(ar);
 ath10k_pci_free_irq(ar);
 ath10k_pci_deinit_irq(ar);
 ath10k_pci_release_resource(ar);
 ath10k_pci_sleep_sync(ar);
 ath10k_pci_release(ar);
 ath10k_core_destroy(ar);
}

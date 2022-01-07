
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ath10k_pci {int mem; struct pci_dev* pdev; } ;
struct ath10k {int dummy; } ;


 int BAR_NUM ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int pci_clear_master (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_region (struct pci_dev*,int ) ;

__attribute__((used)) static void ath10k_pci_release(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);
 struct pci_dev *pdev = ar_pci->pdev;

 pci_iounmap(pdev, ar_pci->mem);
 pci_release_region(pdev, BAR_NUM);
 pci_clear_master(pdev);
 pci_disable_device(pdev);
}

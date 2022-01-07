
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_pci {int link_ctl; int pdev; } ;
struct ath10k {int napi; } ;


 int ATH10K_DBG_BOOT ;
 int PCI_EXP_LNKCTL ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_pci_irq_enable (struct ath10k*) ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int ath10k_pci_rx_post (struct ath10k*) ;
 int napi_enable (int *) ;
 int pcie_capability_write_word (int ,int ,int ) ;

__attribute__((used)) static int ath10k_pci_hif_start(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);

 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot hif start\n");

 napi_enable(&ar->napi);

 ath10k_pci_irq_enable(ar);
 ath10k_pci_rx_post(ar);

 pcie_capability_write_word(ar_pci->pdev, PCI_EXP_LNKCTL,
       ar_pci->link_ctl);

 return 0;
}

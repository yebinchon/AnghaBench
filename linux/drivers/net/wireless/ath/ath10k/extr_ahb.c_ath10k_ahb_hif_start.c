
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int napi; } ;


 int ATH10K_DBG_BOOT ;
 int ath10k_ce_enable_interrupts (struct ath10k*) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 int ath10k_pci_enable_legacy_irq (struct ath10k*) ;
 int ath10k_pci_rx_post (struct ath10k*) ;
 int napi_enable (int *) ;

__attribute__((used)) static int ath10k_ahb_hif_start(struct ath10k *ar)
{
 ath10k_dbg(ar, ATH10K_DBG_BOOT, "boot ahb hif start\n");

 napi_enable(&ar->napi);
 ath10k_ce_enable_interrupts(ar);
 ath10k_pci_enable_legacy_irq(ar);

 ath10k_pci_rx_post(ar);

 return 0;
}

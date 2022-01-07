
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int napi; } ;


 int ath10k_pci_ce_deinit (struct ath10k*) ;
 int ath10k_pci_free_pipes (struct ath10k*) ;
 int ath10k_pci_rx_retry_sync (struct ath10k*) ;
 int netif_napi_del (int *) ;

void ath10k_pci_release_resource(struct ath10k *ar)
{
 ath10k_pci_rx_retry_sync(ar);
 netif_napi_del(&ar->napi);
 ath10k_pci_ce_deinit(ar);
 ath10k_pci_free_pipes(ar);
}

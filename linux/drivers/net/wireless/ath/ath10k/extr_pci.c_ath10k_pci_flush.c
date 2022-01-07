
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int ath10k_pci_buffer_cleanup (struct ath10k*) ;
 int ath10k_pci_rx_retry_sync (struct ath10k*) ;

void ath10k_pci_flush(struct ath10k *ar)
{
 ath10k_pci_rx_retry_sync(ar);
 ath10k_pci_buffer_cleanup(ar);
}

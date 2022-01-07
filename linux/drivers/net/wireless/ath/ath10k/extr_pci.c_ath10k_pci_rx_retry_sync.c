
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_pci {int rx_post_retry; } ;
struct ath10k {int dummy; } ;


 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int del_timer_sync (int *) ;

__attribute__((used)) static void ath10k_pci_rx_retry_sync(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);

 del_timer_sync(&ar_pci->rx_post_retry);
}

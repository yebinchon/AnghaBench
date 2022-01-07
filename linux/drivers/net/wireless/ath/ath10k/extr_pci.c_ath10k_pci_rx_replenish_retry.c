
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ath10k_pci {struct ath10k* ar; } ;
struct ath10k {int dummy; } ;


 struct ath10k_pci* ar_pci ;
 int ath10k_pci_rx_post (struct ath10k*) ;
 struct ath10k_pci* from_timer (int ,struct timer_list*,int ) ;
 int rx_post_retry ;

void ath10k_pci_rx_replenish_retry(struct timer_list *t)
{
 struct ath10k_pci *ar_pci = from_timer(ar_pci, t, rx_post_retry);
 struct ath10k *ar = ar_pci->ar;

 ath10k_pci_rx_post(ar);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k_pci {int * pipe_info; } ;
struct ath10k {int dummy; } ;


 int CE_COUNT ;
 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int ath10k_pci_rx_post_pipe (int *) ;

void ath10k_pci_rx_post(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);
 int i;

 for (i = 0; i < CE_COUNT; i++)
  ath10k_pci_rx_post_pipe(&ar_pci->pipe_info[i]);
}

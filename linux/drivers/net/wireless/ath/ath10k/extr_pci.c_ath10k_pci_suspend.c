
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int dummy; } ;


 int ath10k_pci_sleep_sync (struct ath10k*) ;

__attribute__((used)) static int ath10k_pci_suspend(struct ath10k *ar)
{





 ath10k_pci_sleep_sync(ar);

 return 0;
}

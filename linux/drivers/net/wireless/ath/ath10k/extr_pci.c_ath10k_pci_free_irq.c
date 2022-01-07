
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_pci {TYPE_1__* pdev; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 struct ath10k_pci* ath10k_pci_priv (struct ath10k*) ;
 int free_irq (int ,struct ath10k*) ;

__attribute__((used)) static void ath10k_pci_free_irq(struct ath10k *ar)
{
 struct ath10k_pci *ar_pci = ath10k_pci_priv(ar);

 free_irq(ar_pci->pdev->irq, ar);
}

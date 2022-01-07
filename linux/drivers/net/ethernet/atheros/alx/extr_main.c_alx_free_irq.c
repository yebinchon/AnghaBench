
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {scalar_t__ msix_enabled; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;
struct alx_priv {int num_napi; struct alx_priv** qnapi; TYPE_1__ hw; } ;


 int free_irq (int ,struct alx_priv*) ;
 int pci_free_irq_vectors (struct pci_dev*) ;
 int pci_irq_vector (struct pci_dev*,int) ;

__attribute__((used)) static void alx_free_irq(struct alx_priv *alx)
{
 struct pci_dev *pdev = alx->hw.pdev;
 int i;

 free_irq(pci_irq_vector(pdev, 0), alx);
 if (alx->hw.pdev->msix_enabled) {
  for (i = 0; i < alx->num_napi; i++)
   free_irq(pci_irq_vector(pdev, i + 1), alx->qnapi[i]);
 }

 pci_free_irq_vectors(pdev);
}

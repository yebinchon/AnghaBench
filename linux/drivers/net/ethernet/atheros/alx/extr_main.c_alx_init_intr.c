
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pdev; } ;
struct alx_priv {int num_vec; int num_napi; int num_txq; int num_rxq; TYPE_1__ hw; } ;


 int PCI_IRQ_LEGACY ;
 int PCI_IRQ_MSI ;
 int pci_alloc_irq_vectors (int ,int,int,int) ;

__attribute__((used)) static int alx_init_intr(struct alx_priv *alx)
{
 int ret;

 ret = pci_alloc_irq_vectors(alx->hw.pdev, 1, 1,
   PCI_IRQ_MSI | PCI_IRQ_LEGACY);
 if (ret < 0)
  return ret;

 alx->num_vec = 1;
 alx->num_napi = 1;
 alx->num_txq = 1;
 alx->num_rxq = 1;
 return 0;
}

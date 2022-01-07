
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct enetc_ndev_priv {int bdr_int_num; int * int_vector; TYPE_1__* si; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 scalar_t__ ENETC_BDR_INT_BASE_IDX ;
 int free_irq (int,int ) ;
 int irq_set_affinity_hint (int,int *) ;
 int pci_irq_vector (struct pci_dev*,scalar_t__) ;

__attribute__((used)) static void enetc_free_irqs(struct enetc_ndev_priv *priv)
{
 struct pci_dev *pdev = priv->si->pdev;
 int i;

 for (i = 0; i < priv->bdr_int_num; i++) {
  int irq = pci_irq_vector(pdev, ENETC_BDR_INT_BASE_IDX + i);

  irq_set_affinity_hint(irq, ((void*)0));
  free_irq(irq, priv->int_vector[i]);
 }
}

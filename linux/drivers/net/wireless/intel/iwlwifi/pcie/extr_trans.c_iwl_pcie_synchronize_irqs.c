
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans_pcie {int alloc_vecs; TYPE_2__* pci_dev; TYPE_1__* msix_entries; scalar_t__ msix_enabled; } ;
struct iwl_trans {int dummy; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int vector; } ;


 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int synchronize_irq (int ) ;

void iwl_pcie_synchronize_irqs(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);

 if (trans_pcie->msix_enabled) {
  int i;

  for (i = 0; i < trans_pcie->alloc_vecs; i++)
   synchronize_irq(trans_pcie->msix_entries[i].vector);
 } else {
  synchronize_irq(trans_pcie->pci_dev->irq);
 }
}

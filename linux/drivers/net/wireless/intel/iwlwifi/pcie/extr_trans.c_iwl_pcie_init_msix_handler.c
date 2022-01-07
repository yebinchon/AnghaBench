
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct msix_entry {int vector; } ;
struct iwl_trans_pcie {int alloc_vecs; int def_irq; int trans; struct msix_entry* msix_entries; } ;


 int ENOMEM ;
 int IRQF_SHARED ;
 int IWL_ERR (int ,char*,int) ;
 int devm_request_threaded_irq (int *,int ,int ,int ,int ,char const*,struct msix_entry*) ;
 int iwl_pcie_irq_msix_handler ;
 int iwl_pcie_irq_rx_msix_handler ;
 int iwl_pcie_irq_set_affinity (int ) ;
 int iwl_pcie_msix_isr ;
 char* queue_name (int *,struct iwl_trans_pcie*,int) ;

__attribute__((used)) static int iwl_pcie_init_msix_handler(struct pci_dev *pdev,
          struct iwl_trans_pcie *trans_pcie)
{
 int i;

 for (i = 0; i < trans_pcie->alloc_vecs; i++) {
  int ret;
  struct msix_entry *msix_entry;
  const char *qname = queue_name(&pdev->dev, trans_pcie, i);

  if (!qname)
   return -ENOMEM;

  msix_entry = &trans_pcie->msix_entries[i];
  ret = devm_request_threaded_irq(&pdev->dev,
      msix_entry->vector,
      iwl_pcie_msix_isr,
      (i == trans_pcie->def_irq) ?
      iwl_pcie_irq_msix_handler :
      iwl_pcie_irq_rx_msix_handler,
      IRQF_SHARED,
      qname,
      msix_entry);
  if (ret) {
   IWL_ERR(trans_pcie->trans,
    "Error allocating IRQ %d\n", i);

   return ret;
  }
 }
 iwl_pcie_irq_set_affinity(trans_pcie->trans);

 return 0;
}

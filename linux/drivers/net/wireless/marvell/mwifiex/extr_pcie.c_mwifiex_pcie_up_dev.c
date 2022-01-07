
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_buf_size; } ;
struct pcie_service_card {TYPE_1__ pcie; struct pci_dev* dev; } ;
struct pci_dev {int dummy; } ;
struct mwifiex_adapter {int tx_buf_size; struct pcie_service_card* card; } ;


 int mwifiex_pcie_alloc_buffers (struct mwifiex_adapter*) ;
 int pci_set_master (struct pci_dev*) ;

__attribute__((used)) static void mwifiex_pcie_up_dev(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;
 struct pci_dev *pdev = card->dev;




 adapter->tx_buf_size = card->pcie.tx_buf_size;

 mwifiex_pcie_alloc_buffers(adapter);

 pci_set_master(pdev);
}

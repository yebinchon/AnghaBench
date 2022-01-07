
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_service_card {int * cmd_buf; int * cmdrsp_buf; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;


 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb_any (int *) ;
 int mwifiex_unmap_pci_memory (struct mwifiex_adapter*,int *,int ) ;

__attribute__((used)) static int mwifiex_pcie_delete_cmdrsp_buf(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card;

 if (!adapter)
  return 0;

 card = adapter->card;

 if (card && card->cmdrsp_buf) {
  mwifiex_unmap_pci_memory(adapter, card->cmdrsp_buf,
      PCI_DMA_FROMDEVICE);
  dev_kfree_skb_any(card->cmdrsp_buf);
  card->cmdrsp_buf = ((void*)0);
 }

 if (card && card->cmd_buf) {
  mwifiex_unmap_pci_memory(adapter, card->cmd_buf,
      PCI_DMA_TODEVICE);
  dev_kfree_skb_any(card->cmd_buf);
  card->cmd_buf = ((void*)0);
 }
 return 0;
}

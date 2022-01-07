
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct pcie_service_card {int dev; } ;
struct mwifiex_dma_mapping {size_t len; int addr; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;


 int ERROR ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_store_mapping (struct sk_buff*,struct mwifiex_dma_mapping*) ;
 scalar_t__ pci_dma_mapping_error (int ,int ) ;
 int pci_map_single (int ,int ,size_t,int) ;

__attribute__((used)) static int
mwifiex_map_pci_memory(struct mwifiex_adapter *adapter, struct sk_buff *skb,
         size_t size, int flags)
{
 struct pcie_service_card *card = adapter->card;
 struct mwifiex_dma_mapping mapping;

 mapping.addr = pci_map_single(card->dev, skb->data, size, flags);
 if (pci_dma_mapping_error(card->dev, mapping.addr)) {
  mwifiex_dbg(adapter, ERROR, "failed to map pci memory!\n");
  return -1;
 }
 mapping.len = size;
 mwifiex_store_mapping(skb, &mapping);
 return 0;
}

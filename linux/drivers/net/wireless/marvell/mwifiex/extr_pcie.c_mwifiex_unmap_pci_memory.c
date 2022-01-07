
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pcie_service_card {int dev; } ;
struct mwifiex_dma_mapping {int len; int addr; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;


 int mwifiex_get_mapping (struct sk_buff*,struct mwifiex_dma_mapping*) ;
 int pci_unmap_single (int ,int ,int ,int) ;

__attribute__((used)) static void mwifiex_unmap_pci_memory(struct mwifiex_adapter *adapter,
         struct sk_buff *skb, int flags)
{
 struct pcie_service_card *card = adapter->card;
 struct mwifiex_dma_mapping mapping;

 mwifiex_get_mapping(skb, &mapping);
 pci_unmap_single(card->dev, mapping.addr, mapping.len, flags);
}

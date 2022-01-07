
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pcie_service_card {struct sk_buff* cmdrsp_buf; } ;
struct mwifiex_adapter {int intf_hdr_len; struct pcie_service_card* card; } ;


 int MWIFIEX_UPLD_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 scalar_t__ mwifiex_map_pci_memory (struct mwifiex_adapter*,struct sk_buff*,int ,int ) ;
 int skb_push (struct sk_buff*,int ) ;

__attribute__((used)) static int mwifiex_pcie_cmdrsp_complete(struct mwifiex_adapter *adapter,
     struct sk_buff *skb)
{
 struct pcie_service_card *card = adapter->card;

 if (skb) {
  card->cmdrsp_buf = skb;
  skb_push(card->cmdrsp_buf, adapter->intf_hdr_len);
  if (mwifiex_map_pci_memory(adapter, skb, MWIFIEX_UPLD_SIZE,
        PCI_DMA_FROMDEVICE))
   return -1;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pcie_service_card {struct sk_buff* cmdrsp_buf; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;


 int ENOMEM ;
 int ERROR ;
 int MWIFIEX_UPLD_SIZE ;
 int PCI_DMA_FROMDEVICE ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 scalar_t__ mwifiex_map_pci_memory (struct mwifiex_adapter*,struct sk_buff*,int ,int ) ;
 int skb_put (struct sk_buff*,int ) ;

__attribute__((used)) static int mwifiex_pcie_alloc_cmdrsp_buf(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;
 struct sk_buff *skb;


 skb = dev_alloc_skb(MWIFIEX_UPLD_SIZE);
 if (!skb) {
  mwifiex_dbg(adapter, ERROR,
       "Unable to allocate skb for command response data.\n");
  return -ENOMEM;
 }
 skb_put(skb, MWIFIEX_UPLD_SIZE);
 if (mwifiex_map_pci_memory(adapter, skb, MWIFIEX_UPLD_SIZE,
       PCI_DMA_FROMDEVICE))
  return -1;

 card->cmdrsp_buf = skb;

 return 0;
}

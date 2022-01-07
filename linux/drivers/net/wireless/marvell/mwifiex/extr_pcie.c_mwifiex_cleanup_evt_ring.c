
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pcie_service_card {struct sk_buff** evt_buf_list; struct mwifiex_evt_buf_desc** evtbd_ring; } ;
struct mwifiex_evt_buf_desc {int dummy; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;


 int MWIFIEX_MAX_EVT_BD ;
 int PCI_DMA_FROMDEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int memset (struct mwifiex_evt_buf_desc*,int ,int) ;
 int mwifiex_unmap_pci_memory (struct mwifiex_adapter*,struct sk_buff*,int ) ;

__attribute__((used)) static void mwifiex_cleanup_evt_ring(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;
 struct mwifiex_evt_buf_desc *desc;
 struct sk_buff *skb;
 int i;

 for (i = 0; i < MWIFIEX_MAX_EVT_BD; i++) {
  desc = card->evtbd_ring[i];
  if (card->evt_buf_list[i]) {
   skb = card->evt_buf_list[i];
   mwifiex_unmap_pci_memory(adapter, skb,
       PCI_DMA_FROMDEVICE);
   dev_kfree_skb_any(skb);
  }
  card->evt_buf_list[i] = ((void*)0);
  memset(desc, 0, sizeof(*desc));
 }

 return;
}

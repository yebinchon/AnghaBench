
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct sk_buff {int * data; } ;
struct pcie_service_card {int dev; struct sk_buff* cmdrsp_buf; } ;
struct mwifiex_adapter {struct pcie_service_card* card; } ;
typedef int sleep_cookie ;


 int INFO ;
 scalar_t__ MWIFIEX_DEF_SLEEP_COOKIE ;
 int MWIFIEX_SKB_DMA_ADDR (struct sk_buff*) ;
 int PCI_DMA_FROMDEVICE ;
 scalar_t__ get_unaligned_le32 (int *) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int pci_dma_sync_single_for_cpu (int ,int ,int,int ) ;
 int pci_dma_sync_single_for_device (int ,int ,int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void mwifiex_delay_for_sleep_cookie(struct mwifiex_adapter *adapter,
        u32 max_delay_loop_cnt)
{
 struct pcie_service_card *card = adapter->card;
 u8 *buffer;
 u32 sleep_cookie, count;
 struct sk_buff *cmdrsp = card->cmdrsp_buf;

 for (count = 0; count < max_delay_loop_cnt; count++) {
  pci_dma_sync_single_for_cpu(card->dev,
         MWIFIEX_SKB_DMA_ADDR(cmdrsp),
         sizeof(sleep_cookie),
         PCI_DMA_FROMDEVICE);
  buffer = cmdrsp->data;
  sleep_cookie = get_unaligned_le32(buffer);

  if (sleep_cookie == MWIFIEX_DEF_SLEEP_COOKIE) {
   mwifiex_dbg(adapter, INFO,
        "sleep cookie found at count %d\n", count);
   break;
  }
  pci_dma_sync_single_for_device(card->dev,
            MWIFIEX_SKB_DMA_ADDR(cmdrsp),
            sizeof(sleep_cookie),
            PCI_DMA_FROMDEVICE);
  usleep_range(20, 30);
 }

 if (count >= max_delay_loop_cnt)
  mwifiex_dbg(adapter, INFO,
       "max count reached while accessing sleep cookie\n");
}

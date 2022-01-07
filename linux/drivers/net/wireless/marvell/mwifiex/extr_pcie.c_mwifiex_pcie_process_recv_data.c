
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int len; int data; } ;
struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {size_t rxbd_wrptr; size_t rxbd_rdptr; size_t txbd_wrptr; struct mwifiex_pfu_buf_desc** rxbd_ring; struct sk_buff** rx_buf_list; TYPE_1__ pcie; } ;
struct mwifiex_pfu_buf_desc {int flags; int len; void* paddr; scalar_t__ offset; int frag_len; } ;
struct mwifiex_pcie_card_reg {size_t rx_mask; size_t rx_rollover_ind; int ring_flag_sop; int ring_flag_eop; size_t tx_wrap_mask; int rx_wrptr; int rx_rdptr; scalar_t__ pfu_enabled; } ;
struct mwifiex_pcie_buf_desc {int flags; int len; void* paddr; scalar_t__ offset; int frag_len; } ;
struct mwifiex_adapter {scalar_t__ intf_hdr_len; int data_received; int rx_pending; int rx_data_q; scalar_t__ rx_work_enabled; struct pcie_service_card* card; } ;
typedef void* dma_addr_t ;


 int DATA ;
 int ENOMEM ;
 int ERROR ;
 int GFP_KERNEL ;
 int INFO ;
 int MWIFIEX_MAX_TXRX_BD ;
 scalar_t__ MWIFIEX_RX_DATA_BUF_SIZE ;
 void* MWIFIEX_SKB_DMA_ADDR (struct sk_buff*) ;
 int PCI_DMA_FROMDEVICE ;
 scalar_t__ WARN_ON (int) ;
 int atomic_inc (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ get_unaligned_le16 (int ) ;
 struct sk_buff* mwifiex_alloc_dma_align_buf (scalar_t__,int ) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int mwifiex_handle_rx_packet (struct mwifiex_adapter*,struct sk_buff*) ;
 scalar_t__ mwifiex_map_pci_memory (struct mwifiex_adapter*,struct sk_buff*,scalar_t__,int ) ;
 int mwifiex_pcie_ok_to_access_hw (struct mwifiex_adapter*) ;
 int mwifiex_pm_wakeup_card (struct mwifiex_adapter*) ;
 scalar_t__ mwifiex_read_reg (struct mwifiex_adapter*,int ,size_t*) ;
 int mwifiex_unmap_pci_memory (struct mwifiex_adapter*,struct sk_buff*,int ) ;
 scalar_t__ mwifiex_write_reg (struct mwifiex_adapter*,int ,size_t) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static int mwifiex_pcie_process_recv_data(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;
 const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;
 u32 wrptr, rd_index, tx_val;
 dma_addr_t buf_pa;
 int ret = 0;
 struct sk_buff *skb_tmp = ((void*)0);
 struct mwifiex_pcie_buf_desc *desc;
 struct mwifiex_pfu_buf_desc *desc2;

 if (!mwifiex_pcie_ok_to_access_hw(adapter))
  mwifiex_pm_wakeup_card(adapter);


 if (mwifiex_read_reg(adapter, reg->rx_wrptr, &wrptr)) {
  mwifiex_dbg(adapter, ERROR,
       "RECV DATA: failed to read reg->rx_wrptr\n");
  ret = -1;
  goto done;
 }
 card->rxbd_wrptr = wrptr;

 while (((wrptr & reg->rx_mask) !=
  (card->rxbd_rdptr & reg->rx_mask)) ||
        ((wrptr & reg->rx_rollover_ind) ==
  (card->rxbd_rdptr & reg->rx_rollover_ind))) {
  struct sk_buff *skb_data;
  u16 rx_len;

  rd_index = card->rxbd_rdptr & reg->rx_mask;
  skb_data = card->rx_buf_list[rd_index];




  if (!skb_data)
   return -ENOMEM;

  mwifiex_unmap_pci_memory(adapter, skb_data, PCI_DMA_FROMDEVICE);
  card->rx_buf_list[rd_index] = ((void*)0);




  rx_len = get_unaligned_le16(skb_data->data);
  if (WARN_ON(rx_len <= adapter->intf_hdr_len ||
       rx_len > MWIFIEX_RX_DATA_BUF_SIZE)) {
   mwifiex_dbg(adapter, ERROR,
        "Invalid RX len %d, Rd=%#x, Wr=%#x\n",
        rx_len, card->rxbd_rdptr, wrptr);
   dev_kfree_skb_any(skb_data);
  } else {
   skb_put(skb_data, rx_len);
   mwifiex_dbg(adapter, DATA,
        "info: RECV DATA: Rd=%#x, Wr=%#x, Len=%d\n",
        card->rxbd_rdptr, wrptr, rx_len);
   skb_pull(skb_data, adapter->intf_hdr_len);
   if (adapter->rx_work_enabled) {
    skb_queue_tail(&adapter->rx_data_q, skb_data);
    adapter->data_received = 1;
    atomic_inc(&adapter->rx_pending);
   } else {
    mwifiex_handle_rx_packet(adapter, skb_data);
   }
  }

  skb_tmp = mwifiex_alloc_dma_align_buf(MWIFIEX_RX_DATA_BUF_SIZE,
            GFP_KERNEL);
  if (!skb_tmp) {
   mwifiex_dbg(adapter, ERROR,
        "Unable to allocate skb.\n");
   return -ENOMEM;
  }

  if (mwifiex_map_pci_memory(adapter, skb_tmp,
        MWIFIEX_RX_DATA_BUF_SIZE,
        PCI_DMA_FROMDEVICE))
   return -1;

  buf_pa = MWIFIEX_SKB_DMA_ADDR(skb_tmp);

  mwifiex_dbg(adapter, INFO,
       "RECV DATA: Attach new sk_buff %p at rxbd_rdidx=%d\n",
       skb_tmp, rd_index);
  card->rx_buf_list[rd_index] = skb_tmp;

  if (reg->pfu_enabled) {
   desc2 = card->rxbd_ring[rd_index];
   desc2->paddr = buf_pa;
   desc2->len = skb_tmp->len;
   desc2->frag_len = skb_tmp->len;
   desc2->offset = 0;
   desc2->flags = reg->ring_flag_sop | reg->ring_flag_eop;
  } else {
   desc = card->rxbd_ring[rd_index];
   desc->paddr = buf_pa;
   desc->len = skb_tmp->len;
   desc->flags = 0;
  }

  if ((++card->rxbd_rdptr & reg->rx_mask) ==
       MWIFIEX_MAX_TXRX_BD) {
   card->rxbd_rdptr = ((card->rxbd_rdptr &
          reg->rx_rollover_ind) ^
          reg->rx_rollover_ind);
  }
  mwifiex_dbg(adapter, DATA,
       "info: RECV DATA: <Rd: %#x, Wr: %#x>\n",
       card->rxbd_rdptr, wrptr);

  tx_val = card->txbd_wrptr & reg->tx_wrap_mask;

  if (mwifiex_write_reg(adapter, reg->rx_rdptr,
          card->rxbd_rdptr | tx_val)) {
   mwifiex_dbg(adapter, DATA,
        "RECV DATA: failed to write reg->rx_rdptr\n");
   ret = -1;
   goto done;
  }


  if (mwifiex_read_reg(adapter, reg->rx_wrptr, &wrptr)) {
   mwifiex_dbg(adapter, ERROR,
        "RECV DATA: failed to read reg->rx_wrptr\n");
   ret = -1;
   goto done;
  }
  mwifiex_dbg(adapter, DATA,
       "info: RECV DATA: Rcvd packet from fw successfully\n");
  card->rxbd_wrptr = wrptr;
 }

done:
 return ret;
}

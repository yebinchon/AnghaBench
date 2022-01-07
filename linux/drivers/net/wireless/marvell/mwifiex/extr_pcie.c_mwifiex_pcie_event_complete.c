
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {size_t evtbd_rdptr; struct sk_buff** evt_buf_list; struct mwifiex_evt_buf_desc** evtbd_ring; TYPE_1__ pcie; } ;
struct mwifiex_pcie_card_reg {int evt_rollover_ind; int evt_rdptr; int evt_wrptr; } ;
struct mwifiex_evt_buf_desc {scalar_t__ flags; scalar_t__ len; int paddr; } ;
struct mwifiex_adapter {int intf_hdr_len; struct pcie_service_card* card; } ;


 int EINVAL ;
 int ERROR ;
 int EVENT ;
 scalar_t__ MAX_EVENT_SIZE ;
 size_t MWIFIEX_EVTBD_MASK ;
 size_t MWIFIEX_MAX_EVT_BD ;
 int MWIFIEX_SKB_DMA_ADDR (struct sk_buff*) ;
 int PCI_DMA_FROMDEVICE ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 scalar_t__ mwifiex_map_pci_memory (struct mwifiex_adapter*,struct sk_buff*,scalar_t__,int ) ;
 int mwifiex_pcie_process_event_ready (struct mwifiex_adapter*) ;
 scalar_t__ mwifiex_read_reg (struct mwifiex_adapter*,int ,size_t*) ;
 scalar_t__ mwifiex_write_reg (struct mwifiex_adapter*,int ,int) ;
 int skb_push (struct sk_buff*,int ) ;
 int skb_put (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int mwifiex_pcie_event_complete(struct mwifiex_adapter *adapter,
           struct sk_buff *skb)
{
 struct pcie_service_card *card = adapter->card;
 const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;
 int ret = 0;
 u32 rdptr = card->evtbd_rdptr & MWIFIEX_EVTBD_MASK;
 u32 wrptr;
 struct mwifiex_evt_buf_desc *desc;

 if (!skb)
  return 0;

 if (rdptr >= MWIFIEX_MAX_EVT_BD) {
  mwifiex_dbg(adapter, ERROR,
       "event_complete: Invalid rdptr 0x%x\n",
       rdptr);
  return -EINVAL;
 }


 if (mwifiex_read_reg(adapter, reg->evt_wrptr, &wrptr)) {
  mwifiex_dbg(adapter, ERROR,
       "event_complete: failed to read reg->evt_wrptr\n");
  return -1;
 }

 if (!card->evt_buf_list[rdptr]) {
  skb_push(skb, adapter->intf_hdr_len);
  skb_put(skb, MAX_EVENT_SIZE - skb->len);
  if (mwifiex_map_pci_memory(adapter, skb,
        MAX_EVENT_SIZE,
        PCI_DMA_FROMDEVICE))
   return -1;
  card->evt_buf_list[rdptr] = skb;
  desc = card->evtbd_ring[rdptr];
  desc->paddr = MWIFIEX_SKB_DMA_ADDR(skb);
  desc->len = (u16)skb->len;
  desc->flags = 0;
  skb = ((void*)0);
 } else {
  mwifiex_dbg(adapter, ERROR,
       "info: ERROR: buf still valid at index %d, <%p, %p>\n",
       rdptr, card->evt_buf_list[rdptr], skb);
 }

 if ((++card->evtbd_rdptr & MWIFIEX_EVTBD_MASK) == MWIFIEX_MAX_EVT_BD) {
  card->evtbd_rdptr = ((card->evtbd_rdptr &
     reg->evt_rollover_ind) ^
     reg->evt_rollover_ind);
 }

 mwifiex_dbg(adapter, EVENT,
      "info: Updated <Rd: 0x%x, Wr: 0x%x>",
      card->evtbd_rdptr, wrptr);


 if (mwifiex_write_reg(adapter, reg->evt_rdptr,
         card->evtbd_rdptr)) {
  mwifiex_dbg(adapter, ERROR,
       "event_complete: failed to read reg->evt_rdptr\n");
  return -1;
 }

 mwifiex_dbg(adapter, EVENT,
      "info: Check Events Again\n");
 ret = mwifiex_pcie_process_event_ready(adapter);

 return ret;
}

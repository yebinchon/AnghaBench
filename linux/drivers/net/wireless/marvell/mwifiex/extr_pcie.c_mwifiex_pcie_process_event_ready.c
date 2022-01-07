
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef int u16 ;
struct sk_buff {int * data; } ;
struct TYPE_2__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {size_t evtbd_rdptr; struct mwifiex_evt_buf_desc** evtbd_ring; struct sk_buff** evt_buf_list; TYPE_1__ pcie; } ;
struct mwifiex_pcie_card_reg {size_t evt_rollover_ind; int evt_wrptr; } ;
struct mwifiex_evt_buf_desc {int dummy; } ;
struct mwifiex_adapter {int event_received; size_t intf_hdr_len; size_t event_cause; struct sk_buff* event_skb; int * event_body; struct pcie_service_card* card; } ;
typedef int __le16 ;


 int CPU_INTR_EVENT_DONE ;
 int ERROR ;
 int EVENT ;
 int INFO ;
 int MAX_EVENT_SIZE ;
 int MWIFIEX_EVENT_HEADER_LEN ;
 size_t MWIFIEX_EVTBD_MASK ;
 size_t MWIFIEX_MAX_EVT_BD ;
 int PCIE_CPU_INT_EVENT ;
 int PCI_DMA_FROMDEVICE ;
 size_t get_unaligned_le32 (int *) ;
 int le16_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (struct mwifiex_evt_buf_desc*,int ,int) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*,...) ;
 int mwifiex_pcie_ok_to_access_hw (struct mwifiex_adapter*) ;
 int mwifiex_pm_wakeup_card (struct mwifiex_adapter*) ;
 scalar_t__ mwifiex_read_reg (struct mwifiex_adapter*,int ,size_t*) ;
 int mwifiex_unmap_pci_memory (struct mwifiex_adapter*,struct sk_buff*,int ) ;
 scalar_t__ mwifiex_write_reg (struct mwifiex_adapter*,int ,int ) ;
 int skb_pull (struct sk_buff*,size_t) ;
 int skb_trim (struct sk_buff*,int) ;

__attribute__((used)) static int mwifiex_pcie_process_event_ready(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;
 const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;
 u32 rdptr = card->evtbd_rdptr & MWIFIEX_EVTBD_MASK;
 u32 wrptr, event;
 struct mwifiex_evt_buf_desc *desc;

 if (!mwifiex_pcie_ok_to_access_hw(adapter))
  mwifiex_pm_wakeup_card(adapter);

 if (adapter->event_received) {
  mwifiex_dbg(adapter, EVENT,
       "info: Event being processed,\t"
       "do not process this interrupt just yet\n");
  return 0;
 }

 if (rdptr >= MWIFIEX_MAX_EVT_BD) {
  mwifiex_dbg(adapter, ERROR,
       "info: Invalid read pointer...\n");
  return -1;
 }


 if (mwifiex_read_reg(adapter, reg->evt_wrptr, &wrptr)) {
  mwifiex_dbg(adapter, ERROR,
       "EventReady: failed to read reg->evt_wrptr\n");
  return -1;
 }

 mwifiex_dbg(adapter, EVENT,
      "info: EventReady: Initial <Rd: 0x%x, Wr: 0x%x>",
      card->evtbd_rdptr, wrptr);
 if (((wrptr & MWIFIEX_EVTBD_MASK) != (card->evtbd_rdptr
           & MWIFIEX_EVTBD_MASK)) ||
     ((wrptr & reg->evt_rollover_ind) ==
      (card->evtbd_rdptr & reg->evt_rollover_ind))) {
  struct sk_buff *skb_cmd;
  __le16 data_len = 0;
  u16 evt_len;

  mwifiex_dbg(adapter, INFO,
       "info: Read Index: %d\n", rdptr);
  skb_cmd = card->evt_buf_list[rdptr];
  mwifiex_unmap_pci_memory(adapter, skb_cmd, PCI_DMA_FROMDEVICE);



  card->evt_buf_list[rdptr] = ((void*)0);
  desc = card->evtbd_ring[rdptr];
  memset(desc, 0, sizeof(*desc));

  event = get_unaligned_le32(
   &skb_cmd->data[adapter->intf_hdr_len]);
  adapter->event_cause = event;


  memcpy(&data_len, skb_cmd->data, sizeof(__le16));
  evt_len = le16_to_cpu(data_len);
  skb_trim(skb_cmd, evt_len);
  skb_pull(skb_cmd, adapter->intf_hdr_len);
  mwifiex_dbg(adapter, EVENT,
       "info: Event length: %d\n", evt_len);

  if (evt_len > MWIFIEX_EVENT_HEADER_LEN &&
      evt_len < MAX_EVENT_SIZE)
   memcpy(adapter->event_body, skb_cmd->data +
          MWIFIEX_EVENT_HEADER_LEN, evt_len -
          MWIFIEX_EVENT_HEADER_LEN);

  adapter->event_received = 1;
  adapter->event_skb = skb_cmd;





 } else {
  if (mwifiex_write_reg(adapter, PCIE_CPU_INT_EVENT,
          CPU_INTR_EVENT_DONE)) {
   mwifiex_dbg(adapter, ERROR,
        "Write register failed\n");
   return -1;
  }
 }

 return 0;
}

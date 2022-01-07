
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ len; int data; } ;
struct TYPE_3__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {struct sk_buff* cmdrsp_buf; int dev; struct sk_buff* cmd_buf; TYPE_1__ pcie; } ;
struct mwifiex_pcie_card_reg {int cmdrsp_addr_hi; int cmdrsp_addr_lo; scalar_t__ sleep_cookie; } ;
struct mwifiex_adapter {scalar_t__ ps_state; int cmd_resp_received; TYPE_2__* curr_cmd; int intf_hdr_len; int upld_buf; struct pcie_service_card* card; } ;
struct TYPE_4__ {struct sk_buff* resp_skb; } ;


 int CMD ;
 int CPU_INTR_SLEEP_CFM_DONE ;
 int ERROR ;
 int MWIFIEX_MAX_DELAY_COUNT ;
 int MWIFIEX_SIZE_OF_CMD_BUFFER ;
 int MWIFIEX_SKB_DMA_ADDR (struct sk_buff*) ;
 int MWIFIEX_SLEEP_COOKIE_SIZE ;
 scalar_t__ MWIFIEX_UPLD_SIZE ;
 int PCIE_CPU_INT_EVENT ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 scalar_t__ PS_STATE_SLEEP_CFM ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int get_unaligned_le16 (int ) ;
 int memcpy (int ,int ,int ) ;
 int min_t (int ,int ,scalar_t__) ;
 int mwifiex_dbg (struct mwifiex_adapter*,int ,char*) ;
 int mwifiex_delay_for_sleep_cookie (struct mwifiex_adapter*,int ) ;
 scalar_t__ mwifiex_map_pci_memory (struct mwifiex_adapter*,struct sk_buff*,scalar_t__,int ) ;
 int mwifiex_pcie_enable_host_int (struct mwifiex_adapter*) ;
 scalar_t__ mwifiex_pcie_ok_to_access_hw (struct mwifiex_adapter*) ;
 int mwifiex_process_sleep_confirm_resp (struct mwifiex_adapter*,int ,scalar_t__) ;
 int mwifiex_unmap_pci_memory (struct mwifiex_adapter*,struct sk_buff*,int ) ;
 scalar_t__ mwifiex_write_reg (struct mwifiex_adapter*,int ,int ) ;
 int pci_dma_sync_single_for_cpu (int ,int ,scalar_t__,int ) ;
 int pci_dma_sync_single_for_device (int ,int ,int ,int ) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_push (struct sk_buff*,int ) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_trim (struct sk_buff*,int ) ;
 int u32 ;
 int usleep_range (int,int) ;

__attribute__((used)) static int mwifiex_pcie_process_cmd_complete(struct mwifiex_adapter *adapter)
{
 struct pcie_service_card *card = adapter->card;
 const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;
 struct sk_buff *skb = card->cmdrsp_buf;
 int count = 0;
 u16 rx_len;

 mwifiex_dbg(adapter, CMD,
      "info: Rx CMD Response\n");

 if (adapter->curr_cmd)
  mwifiex_unmap_pci_memory(adapter, skb, PCI_DMA_FROMDEVICE);
 else
  pci_dma_sync_single_for_cpu(card->dev,
         MWIFIEX_SKB_DMA_ADDR(skb),
         MWIFIEX_UPLD_SIZE,
         PCI_DMA_FROMDEVICE);


 if (card->cmd_buf) {
  mwifiex_unmap_pci_memory(adapter, card->cmd_buf,
      PCI_DMA_TODEVICE);
  dev_kfree_skb_any(card->cmd_buf);
  card->cmd_buf = ((void*)0);
 }

 rx_len = get_unaligned_le16(skb->data);
 skb_put(skb, MWIFIEX_UPLD_SIZE - skb->len);
 skb_trim(skb, rx_len);

 if (!adapter->curr_cmd) {
  if (adapter->ps_state == PS_STATE_SLEEP_CFM) {
   pci_dma_sync_single_for_device(card->dev,
      MWIFIEX_SKB_DMA_ADDR(skb),
      MWIFIEX_SLEEP_COOKIE_SIZE,
      PCI_DMA_FROMDEVICE);
   if (mwifiex_write_reg(adapter,
           PCIE_CPU_INT_EVENT,
           CPU_INTR_SLEEP_CFM_DONE)) {
    mwifiex_dbg(adapter, ERROR,
         "Write register failed\n");
    return -1;
   }
   mwifiex_delay_for_sleep_cookie(adapter,
             MWIFIEX_MAX_DELAY_COUNT);
   mwifiex_unmap_pci_memory(adapter, skb,
       PCI_DMA_FROMDEVICE);
   skb_pull(skb, adapter->intf_hdr_len);
   while (reg->sleep_cookie && (count++ < 10) &&
          mwifiex_pcie_ok_to_access_hw(adapter))
    usleep_range(50, 60);
   mwifiex_pcie_enable_host_int(adapter);
   mwifiex_process_sleep_confirm_resp(adapter, skb->data,
          skb->len);
  } else {
   mwifiex_dbg(adapter, ERROR,
        "There is no command but got cmdrsp\n");
  }
  memcpy(adapter->upld_buf, skb->data,
         min_t(u32, MWIFIEX_SIZE_OF_CMD_BUFFER, skb->len));
  skb_push(skb, adapter->intf_hdr_len);
  if (mwifiex_map_pci_memory(adapter, skb, MWIFIEX_UPLD_SIZE,
        PCI_DMA_FROMDEVICE))
   return -1;
 } else if (mwifiex_pcie_ok_to_access_hw(adapter)) {
  skb_pull(skb, adapter->intf_hdr_len);
  adapter->curr_cmd->resp_skb = skb;
  adapter->cmd_resp_received = 1;


  card->cmdrsp_buf = ((void*)0);




  if (mwifiex_write_reg(adapter, reg->cmdrsp_addr_lo, 0)) {
   mwifiex_dbg(adapter, ERROR,
        "cmd_done: failed to clear cmd_rsp_addr_lo\n");
   return -1;
  }


  if (mwifiex_write_reg(adapter, reg->cmdrsp_addr_hi, 0)) {
   mwifiex_dbg(adapter, ERROR,
        "cmd_done: failed to clear cmd_rsp_addr_hi\n");
   return -1;
  }
 }

 return 0;
}

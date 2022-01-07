
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sk_buff {unsigned char* data; int len; } ;
struct TYPE_13__ {int dma_addr; struct sk_buff* skb; } ;
struct s_smt_fp_txd {TYPE_6__ txd_os; } ;
struct TYPE_11__ {int a; } ;
struct TYPE_12__ {TYPE_4__ fddi_canon_addr; } ;
struct TYPE_9__ {scalar_t__ fddiESSSynchTxMode; } ;
struct TYPE_8__ {int sync_bw_available; } ;
struct TYPE_14__ {int DriverLock; int pdev; int QueueSkb; int SendSkbQueue; TYPE_3__* dev; } ;
struct s_smc {TYPE_5__ hw; TYPE_2__ mib; TYPE_1__ ess; TYPE_7__ os; } ;
typedef TYPE_7__ skfddi_priv ;
typedef int dma_addr_t ;
struct TYPE_10__ {int name; } ;


 int CheckSourceAddress (unsigned char*,int ) ;
 int EN_IRQ_EOF ;
 unsigned char FC_ASYNC_LLC ;
 unsigned char FC_LLC_PRIOR ;
 unsigned char FC_SYNC_BIT ;
 int FIRST_FRAG ;
 scalar_t__ HWM_GET_CURR_TXD (struct s_smc*,int) ;
 int LAN_TX ;
 int LAST_FRAG ;
 int LOC_TX ;
 int OUT_OF_TXD ;
 int PCI_DMA_TODEVICE ;
 int QUEUE_A0 ;
 int QUEUE_S ;
 int RING_DOWN ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int hwm_tx_frag (struct s_smc*,unsigned char*,int ,int ,int) ;
 int hwm_tx_init (struct s_smc*,unsigned char,int,int ,int) ;
 int pci_map_single (int *,unsigned char*,int ,int ) ;
 int pci_unmap_single (int *,int ,int ,int ) ;
 int pr_debug (char*,...) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void send_queued_packets(struct s_smc *smc)
{
 skfddi_priv *bp = &smc->os;
 struct sk_buff *skb;
 unsigned char fc;
 int queue;
 struct s_smt_fp_txd *txd;
 dma_addr_t dma_address;
 unsigned long Flags;

 int frame_status;

 pr_debug("send queued packets\n");
 for (;;) {

  skb = skb_dequeue(&bp->SendSkbQueue);

  if (!skb) {
   pr_debug("queue empty\n");
   return;
  }

  spin_lock_irqsave(&bp->DriverLock, Flags);
  fc = skb->data[0];
  queue = (fc & FC_SYNC_BIT) ? QUEUE_S : QUEUE_A0;
  frame_status = hwm_tx_init(smc, fc, 1, skb->len, queue);

  if ((frame_status & (LOC_TX | LAN_TX)) == 0) {


   if ((frame_status & RING_DOWN) != 0) {

    pr_debug("Tx attempt while ring down.\n");
   } else if ((frame_status & OUT_OF_TXD) != 0) {
    pr_debug("%s: out of TXDs.\n", bp->dev->name);
   } else {
    pr_debug("%s: out of transmit resources",
     bp->dev->name);
   }



   skb_queue_head(&bp->SendSkbQueue, skb);
   spin_unlock_irqrestore(&bp->DriverLock, Flags);
   return;

  }

  bp->QueueSkb++;


  CheckSourceAddress(skb->data, smc->hw.fddi_canon_addr.a);

  txd = (struct s_smt_fp_txd *) HWM_GET_CURR_TXD(smc, queue);

  dma_address = pci_map_single(&bp->pdev, skb->data,
          skb->len, PCI_DMA_TODEVICE);
  if (frame_status & LAN_TX) {
   txd->txd_os.skb = skb;
   txd->txd_os.dma_addr = dma_address;
  }
  hwm_tx_frag(smc, skb->data, dma_address, skb->len,
                      frame_status | FIRST_FRAG | LAST_FRAG | EN_IRQ_EOF);

  if (!(frame_status & LAN_TX)) {
   pci_unmap_single(&bp->pdev, dma_address,
      skb->len, PCI_DMA_TODEVICE);
   dev_kfree_skb_irq(skb);
  }
  spin_unlock_irqrestore(&bp->DriverLock, Flags);
 }

 return;

}

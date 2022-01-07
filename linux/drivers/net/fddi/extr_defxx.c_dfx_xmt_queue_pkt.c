
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t u8 ;
typedef void* u32 ;
struct sk_buff {int len; int * data; } ;
struct net_device {int name; } ;
typedef int netdev_tx_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_13__ {struct sk_buff* p_skb; } ;
typedef TYPE_4__ XMT_DRIVER_DESCR ;
struct TYPE_11__ {size_t xmt_prod; size_t xmt_comp; } ;
struct TYPE_12__ {int lword; TYPE_2__ index; } ;
struct TYPE_15__ {scalar_t__ link_available; int lock; TYPE_3__ rcv_xmt_reg; TYPE_4__* xmt_drv_descr_blk; TYPE_1__* descr_block_virt; int bus_dev; int xmt_discards; int xmt_length_errors; } ;
struct TYPE_14__ {void* long_1; void* long_0; } ;
struct TYPE_10__ {TYPE_5__* xmt_data; } ;
typedef TYPE_5__ PI_XMT_DESCR ;
typedef TYPE_6__ DFX_board_t ;


 int DFX_PRH0_BYTE ;
 int DFX_PRH1_BYTE ;
 int DFX_PRH2_BYTE ;
 int DMA_TO_DEVICE ;
 int FDDI_K_LLC_LEN ;
 int FDDI_K_LLC_ZLEN ;
 int IN_RANGE (int,int ,int ) ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ PI_K_FALSE ;
 scalar_t__ PI_K_TRUE ;
 int PI_PDQ_K_REG_TYPE_2_PROD ;
 scalar_t__ PI_STATE_K_LINK_AVAIL ;
 int PI_XMT_DESCR_M_EOP ;
 int PI_XMT_DESCR_M_SOP ;
 int PI_XMT_DESCR_V_SEG_LEN ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ dfx_hw_adap_state_rd (TYPE_6__*) ;
 int dfx_port_write_long (TYPE_6__*,int ,int ) ;
 scalar_t__ dma_map_single (int ,int *,int,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 TYPE_6__* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int printk (char*,int ,int) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_push (struct sk_buff*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static netdev_tx_t dfx_xmt_queue_pkt(struct sk_buff *skb,
         struct net_device *dev)
 {
 DFX_board_t *bp = netdev_priv(dev);
 u8 prod;
 PI_XMT_DESCR *p_xmt_descr;
 XMT_DRIVER_DESCR *p_xmt_drv_descr;
 dma_addr_t dma_addr;
 unsigned long flags;

 netif_stop_queue(dev);
 if (!IN_RANGE(skb->len, FDDI_K_LLC_ZLEN, FDDI_K_LLC_LEN))
 {
  printk("%s: Invalid packet length - %u bytes\n",
   dev->name, skb->len);
  bp->xmt_length_errors++;
  netif_wake_queue(dev);
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }
 if (bp->link_available == PI_K_FALSE)
  {
  if (dfx_hw_adap_state_rd(bp) == PI_STATE_K_LINK_AVAIL)
   bp->link_available = PI_K_TRUE;
  else
   {
   bp->xmt_discards++;
   dev_kfree_skb(skb);
   netif_wake_queue(dev);
   return NETDEV_TX_OK;
   }
  }



 skb_push(skb, 3);
 skb->data[0] = DFX_PRH0_BYTE;
 skb->data[1] = DFX_PRH1_BYTE;
 skb->data[2] = DFX_PRH2_BYTE;

 dma_addr = dma_map_single(bp->bus_dev, skb->data, skb->len,
      DMA_TO_DEVICE);
 if (dma_mapping_error(bp->bus_dev, dma_addr)) {
  skb_pull(skb, 3);
  return NETDEV_TX_BUSY;
 }

 spin_lock_irqsave(&bp->lock, flags);



 prod = bp->rcv_xmt_reg.index.xmt_prod;
 p_xmt_descr = &(bp->descr_block_virt->xmt_data[prod]);
 p_xmt_drv_descr = &(bp->xmt_drv_descr_blk[prod++]);
 p_xmt_descr->long_0 = (u32) (PI_XMT_DESCR_M_SOP | PI_XMT_DESCR_M_EOP | ((skb->len) << PI_XMT_DESCR_V_SEG_LEN));
 p_xmt_descr->long_1 = (u32)dma_addr;
 if (prod == bp->rcv_xmt_reg.index.xmt_comp)
 {
  skb_pull(skb,3);
  spin_unlock_irqrestore(&bp->lock, flags);
  return NETDEV_TX_BUSY;
 }
 p_xmt_drv_descr->p_skb = skb;



 bp->rcv_xmt_reg.index.xmt_prod = prod;
 dfx_port_write_long(bp, PI_PDQ_K_REG_TYPE_2_PROD, bp->rcv_xmt_reg.lword);
 spin_unlock_irqrestore(&bp->lock, flags);
 netif_wake_queue(dev);
 return NETDEV_TX_OK;
 }

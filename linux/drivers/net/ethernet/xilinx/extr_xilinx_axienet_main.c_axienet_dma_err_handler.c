
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {int parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct axienet_local {int options; size_t tx_bd_num; size_t rx_bd_num; size_t rx_bd_p; size_t tx_bd_p; scalar_t__ eth_irq; scalar_t__ rx_bd_ci; scalar_t__ tx_bd_tail; scalar_t__ tx_bd_ci; struct axidma_bd* rx_bd_v; struct axidma_bd* tx_bd_v; TYPE_1__* mii_bus; struct net_device* ndev; } ;
struct axidma_bd {int cntrl; scalar_t__ app4; scalar_t__ app3; scalar_t__ app2; scalar_t__ app1; scalar_t__ app0; scalar_t__ status; int * skb; scalar_t__ phys; } ;
struct TYPE_3__ {int mdio_lock; } ;


 int DMA_TO_DEVICE ;
 size_t XAE_FCC_FCRX_MASK ;
 int XAE_FCC_OFFSET ;
 int XAE_IE_OFFSET ;
 size_t XAE_INT_RECV_ERROR_MASK ;
 size_t XAE_INT_RXRJECT_MASK ;
 int XAE_IP_OFFSET ;
 int XAE_IS_OFFSET ;
 int XAE_OPTION_RXEN ;
 int XAE_OPTION_TXEN ;
 int XAE_RCW1_OFFSET ;
 size_t XAE_RCW1_RX_MASK ;
 int XAXIDMA_BD_CTRL_LENGTH_MASK ;
 size_t XAXIDMA_COALESCE_MASK ;
 size_t XAXIDMA_COALESCE_SHIFT ;
 size_t XAXIDMA_CR_RUNSTOP_MASK ;
 size_t XAXIDMA_DELAY_MASK ;
 size_t XAXIDMA_DELAY_SHIFT ;
 size_t XAXIDMA_DFT_RX_THRESHOLD ;
 size_t XAXIDMA_DFT_RX_WAITBOUND ;
 size_t XAXIDMA_DFT_TX_THRESHOLD ;
 size_t XAXIDMA_DFT_TX_WAITBOUND ;
 size_t XAXIDMA_IRQ_ALL_MASK ;
 int XAXIDMA_RX_CDESC_OFFSET ;
 int XAXIDMA_RX_CR_OFFSET ;
 int XAXIDMA_RX_TDESC_OFFSET ;
 int XAXIDMA_TX_CDESC_OFFSET ;
 int XAXIDMA_TX_CR_OFFSET ;
 int __axienet_device_reset (struct axienet_local*) ;
 size_t axienet_dma_in32 (struct axienet_local*,int ) ;
 int axienet_dma_out32 (struct axienet_local*,int ,size_t) ;
 size_t axienet_ior (struct axienet_local*,int ) ;
 int axienet_iow (struct axienet_local*,int ,size_t) ;
 int axienet_mdio_disable (struct axienet_local*) ;
 int axienet_mdio_enable (struct axienet_local*) ;
 int axienet_set_mac_address (struct net_device*,int *) ;
 int axienet_set_multicast_list (struct net_device*) ;
 int axienet_setoptions (struct net_device*,int) ;
 int dev_kfree_skb_irq (int *) ;
 int dma_unmap_single (int ,scalar_t__,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void axienet_dma_err_handler(unsigned long data)
{
 u32 axienet_status;
 u32 cr, i;
 struct axienet_local *lp = (struct axienet_local *) data;
 struct net_device *ndev = lp->ndev;
 struct axidma_bd *cur_p;

 axienet_setoptions(ndev, lp->options &
      ~(XAE_OPTION_TXEN | XAE_OPTION_RXEN));






 mutex_lock(&lp->mii_bus->mdio_lock);
 axienet_mdio_disable(lp);
 __axienet_device_reset(lp);
 axienet_mdio_enable(lp);
 mutex_unlock(&lp->mii_bus->mdio_lock);

 for (i = 0; i < lp->tx_bd_num; i++) {
  cur_p = &lp->tx_bd_v[i];
  if (cur_p->phys)
   dma_unmap_single(ndev->dev.parent, cur_p->phys,
      (cur_p->cntrl &
       XAXIDMA_BD_CTRL_LENGTH_MASK),
      DMA_TO_DEVICE);
  if (cur_p->skb)
   dev_kfree_skb_irq(cur_p->skb);
  cur_p->phys = 0;
  cur_p->cntrl = 0;
  cur_p->status = 0;
  cur_p->app0 = 0;
  cur_p->app1 = 0;
  cur_p->app2 = 0;
  cur_p->app3 = 0;
  cur_p->app4 = 0;
  cur_p->skb = ((void*)0);
 }

 for (i = 0; i < lp->rx_bd_num; i++) {
  cur_p = &lp->rx_bd_v[i];
  cur_p->status = 0;
  cur_p->app0 = 0;
  cur_p->app1 = 0;
  cur_p->app2 = 0;
  cur_p->app3 = 0;
  cur_p->app4 = 0;
 }

 lp->tx_bd_ci = 0;
 lp->tx_bd_tail = 0;
 lp->rx_bd_ci = 0;


 cr = axienet_dma_in32(lp, XAXIDMA_RX_CR_OFFSET);

 cr = ((cr & ~XAXIDMA_COALESCE_MASK) |
       (XAXIDMA_DFT_RX_THRESHOLD << XAXIDMA_COALESCE_SHIFT));

 cr = ((cr & ~XAXIDMA_DELAY_MASK) |
       (XAXIDMA_DFT_RX_WAITBOUND << XAXIDMA_DELAY_SHIFT));

 cr |= XAXIDMA_IRQ_ALL_MASK;

 axienet_dma_out32(lp, XAXIDMA_RX_CR_OFFSET, cr);


 cr = axienet_dma_in32(lp, XAXIDMA_TX_CR_OFFSET);

 cr = (((cr & ~XAXIDMA_COALESCE_MASK)) |
       (XAXIDMA_DFT_TX_THRESHOLD << XAXIDMA_COALESCE_SHIFT));

 cr = (((cr & ~XAXIDMA_DELAY_MASK)) |
       (XAXIDMA_DFT_TX_WAITBOUND << XAXIDMA_DELAY_SHIFT));

 cr |= XAXIDMA_IRQ_ALL_MASK;

 axienet_dma_out32(lp, XAXIDMA_TX_CR_OFFSET, cr);




 axienet_dma_out32(lp, XAXIDMA_RX_CDESC_OFFSET, lp->rx_bd_p);
 cr = axienet_dma_in32(lp, XAXIDMA_RX_CR_OFFSET);
 axienet_dma_out32(lp, XAXIDMA_RX_CR_OFFSET,
     cr | XAXIDMA_CR_RUNSTOP_MASK);
 axienet_dma_out32(lp, XAXIDMA_RX_TDESC_OFFSET, lp->rx_bd_p +
     (sizeof(*lp->rx_bd_v) * (lp->rx_bd_num - 1)));





 axienet_dma_out32(lp, XAXIDMA_TX_CDESC_OFFSET, lp->tx_bd_p);
 cr = axienet_dma_in32(lp, XAXIDMA_TX_CR_OFFSET);
 axienet_dma_out32(lp, XAXIDMA_TX_CR_OFFSET,
     cr | XAXIDMA_CR_RUNSTOP_MASK);

 axienet_status = axienet_ior(lp, XAE_RCW1_OFFSET);
 axienet_status &= ~XAE_RCW1_RX_MASK;
 axienet_iow(lp, XAE_RCW1_OFFSET, axienet_status);

 axienet_status = axienet_ior(lp, XAE_IP_OFFSET);
 if (axienet_status & XAE_INT_RXRJECT_MASK)
  axienet_iow(lp, XAE_IS_OFFSET, XAE_INT_RXRJECT_MASK);
 axienet_iow(lp, XAE_IE_OFFSET, lp->eth_irq > 0 ?
      XAE_INT_RECV_ERROR_MASK : 0);
 axienet_iow(lp, XAE_FCC_OFFSET, XAE_FCC_FCRX_MASK);




 axienet_setoptions(ndev, lp->options &
      ~(XAE_OPTION_TXEN | XAE_OPTION_RXEN));
 axienet_set_mac_address(ndev, ((void*)0));
 axienet_set_multicast_list(ndev);
 axienet_setoptions(ndev, lp->options);
}

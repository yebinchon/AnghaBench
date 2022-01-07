
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int data; } ;
struct TYPE_5__ {int parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct axienet_local {int tx_bd_num; int tx_bd_p; int rx_bd_num; int rx_bd_p; int coalesce_count_rx; int coalesce_count_tx; int max_frm_size; TYPE_3__* rx_bd_v; TYPE_1__* tx_bd_v; scalar_t__ rx_bd_ci; scalar_t__ tx_bd_tail; scalar_t__ tx_bd_ci; } ;
struct TYPE_6__ {int next; int cntrl; int phys; struct sk_buff* skb; } ;
struct TYPE_4__ {int next; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int XAXIDMA_COALESCE_MASK ;
 int XAXIDMA_COALESCE_SHIFT ;
 int XAXIDMA_CR_RUNSTOP_MASK ;
 int XAXIDMA_DELAY_MASK ;
 int XAXIDMA_DELAY_SHIFT ;
 int XAXIDMA_DFT_RX_WAITBOUND ;
 int XAXIDMA_DFT_TX_WAITBOUND ;
 int XAXIDMA_IRQ_ALL_MASK ;
 int XAXIDMA_RX_CDESC_OFFSET ;
 int XAXIDMA_RX_CR_OFFSET ;
 int XAXIDMA_RX_TDESC_OFFSET ;
 int XAXIDMA_TX_CDESC_OFFSET ;
 int XAXIDMA_TX_CR_OFFSET ;
 int axienet_dma_bd_release (struct net_device*) ;
 int axienet_dma_in32 (struct axienet_local*,int ) ;
 int axienet_dma_out32 (struct axienet_local*,int ,int) ;
 void* dma_alloc_coherent (int ,int,int*,int ) ;
 int dma_map_single (int ,int ,int ,int ) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,int ) ;
 struct axienet_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static int axienet_dma_bd_init(struct net_device *ndev)
{
 u32 cr;
 int i;
 struct sk_buff *skb;
 struct axienet_local *lp = netdev_priv(ndev);


 lp->tx_bd_ci = 0;
 lp->tx_bd_tail = 0;
 lp->rx_bd_ci = 0;


 lp->tx_bd_v = dma_alloc_coherent(ndev->dev.parent,
      sizeof(*lp->tx_bd_v) * lp->tx_bd_num,
      &lp->tx_bd_p, GFP_KERNEL);
 if (!lp->tx_bd_v)
  goto out;

 lp->rx_bd_v = dma_alloc_coherent(ndev->dev.parent,
      sizeof(*lp->rx_bd_v) * lp->rx_bd_num,
      &lp->rx_bd_p, GFP_KERNEL);
 if (!lp->rx_bd_v)
  goto out;

 for (i = 0; i < lp->tx_bd_num; i++) {
  lp->tx_bd_v[i].next = lp->tx_bd_p +
          sizeof(*lp->tx_bd_v) *
          ((i + 1) % lp->tx_bd_num);
 }

 for (i = 0; i < lp->rx_bd_num; i++) {
  lp->rx_bd_v[i].next = lp->rx_bd_p +
          sizeof(*lp->rx_bd_v) *
          ((i + 1) % lp->rx_bd_num);

  skb = netdev_alloc_skb_ip_align(ndev, lp->max_frm_size);
  if (!skb)
   goto out;

  lp->rx_bd_v[i].skb = skb;
  lp->rx_bd_v[i].phys = dma_map_single(ndev->dev.parent,
           skb->data,
           lp->max_frm_size,
           DMA_FROM_DEVICE);
  lp->rx_bd_v[i].cntrl = lp->max_frm_size;
 }


 cr = axienet_dma_in32(lp, XAXIDMA_RX_CR_OFFSET);

 cr = ((cr & ~XAXIDMA_COALESCE_MASK) |
       ((lp->coalesce_count_rx) << XAXIDMA_COALESCE_SHIFT));

 cr = ((cr & ~XAXIDMA_DELAY_MASK) |
       (XAXIDMA_DFT_RX_WAITBOUND << XAXIDMA_DELAY_SHIFT));

 cr |= XAXIDMA_IRQ_ALL_MASK;

 axienet_dma_out32(lp, XAXIDMA_RX_CR_OFFSET, cr);


 cr = axienet_dma_in32(lp, XAXIDMA_TX_CR_OFFSET);

 cr = (((cr & ~XAXIDMA_COALESCE_MASK)) |
       ((lp->coalesce_count_tx) << XAXIDMA_COALESCE_SHIFT));

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

 return 0;
out:
 axienet_dma_bd_release(ndev);
 return -ENOMEM;
}

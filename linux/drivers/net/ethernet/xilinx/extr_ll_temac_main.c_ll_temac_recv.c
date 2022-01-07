
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct temac_local {int rx_bd_ci; int temac_features; int rx_lock; int (* dma_out ) (struct temac_local*,int ,scalar_t__) ;struct cdmac_bd* rx_bd_v; struct sk_buff** rx_skb; scalar_t__ rx_bd_p; } ;
struct sk_buff {int len; int data; int ip_summed; int csum; int protocol; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_3__ {int rx_bytes; int rx_packets; } ;
struct net_device {TYPE_2__ dev; TYPE_1__ stats; } ;
struct cdmac_bd {void* app0; void* len; void* phys; void* app3; void* app4; } ;
typedef scalar_t__ dma_addr_t ;


 int CHECKSUM_COMPLETE ;
 int DMA_FROM_DEVICE ;
 int ETH_P_IP ;
 size_t RX_BD_NUM ;
 int RX_TAILDESC_PTR ;
 unsigned int STS_CTRL_APP0_CMPLT ;
 scalar_t__ STS_CTRL_APP0_IRQONEND ;
 int TEMAC_FEATURE_RX_CSUM ;
 scalar_t__ XTE_MAX_JUMBO_FRAME_SIZE ;
 int be32_to_cpu (void*) ;
 void* cpu_to_be32 (scalar_t__) ;
 scalar_t__ dma_map_single (int ,int ,scalar_t__,int ) ;
 int dma_unmap_single (int ,int,scalar_t__,int ) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int htons (int) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,scalar_t__) ;
 struct temac_local* netdev_priv (struct net_device*) ;
 int netif_rx (struct sk_buff*) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 int skb_defer_rx_timestamp (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct temac_local*,int ,scalar_t__) ;

__attribute__((used)) static void ll_temac_recv(struct net_device *ndev)
{
 struct temac_local *lp = netdev_priv(ndev);
 struct sk_buff *skb, *new_skb;
 unsigned int bdstat;
 struct cdmac_bd *cur_p;
 dma_addr_t tail_p, skb_dma_addr;
 int length;
 unsigned long flags;

 spin_lock_irqsave(&lp->rx_lock, flags);

 tail_p = lp->rx_bd_p + sizeof(*lp->rx_bd_v) * lp->rx_bd_ci;
 cur_p = &lp->rx_bd_v[lp->rx_bd_ci];

 bdstat = be32_to_cpu(cur_p->app0);
 while ((bdstat & STS_CTRL_APP0_CMPLT)) {

  skb = lp->rx_skb[lp->rx_bd_ci];
  length = be32_to_cpu(cur_p->app4) & 0x3FFF;

  dma_unmap_single(ndev->dev.parent, be32_to_cpu(cur_p->phys),
     XTE_MAX_JUMBO_FRAME_SIZE, DMA_FROM_DEVICE);

  skb_put(skb, length);
  skb->protocol = eth_type_trans(skb, ndev);
  skb_checksum_none_assert(skb);


  if (((lp->temac_features & TEMAC_FEATURE_RX_CSUM) != 0) &&
      (skb->protocol == htons(ETH_P_IP)) &&
      (skb->len > 64)) {






   skb->csum = htons(be32_to_cpu(cur_p->app3) & 0xFFFF);
   skb->ip_summed = CHECKSUM_COMPLETE;
  }

  if (!skb_defer_rx_timestamp(skb))
   netif_rx(skb);

  ndev->stats.rx_packets++;
  ndev->stats.rx_bytes += length;

  new_skb = netdev_alloc_skb_ip_align(ndev,
      XTE_MAX_JUMBO_FRAME_SIZE);
  if (!new_skb) {
   spin_unlock_irqrestore(&lp->rx_lock, flags);
   return;
  }

  cur_p->app0 = cpu_to_be32(STS_CTRL_APP0_IRQONEND);
  skb_dma_addr = dma_map_single(ndev->dev.parent, new_skb->data,
           XTE_MAX_JUMBO_FRAME_SIZE,
           DMA_FROM_DEVICE);
  cur_p->phys = cpu_to_be32(skb_dma_addr);
  cur_p->len = cpu_to_be32(XTE_MAX_JUMBO_FRAME_SIZE);
  lp->rx_skb[lp->rx_bd_ci] = new_skb;

  lp->rx_bd_ci++;
  if (lp->rx_bd_ci >= RX_BD_NUM)
   lp->rx_bd_ci = 0;

  cur_p = &lp->rx_bd_v[lp->rx_bd_ci];
  bdstat = be32_to_cpu(cur_p->app0);
 }
 lp->dma_out(lp, RX_TAILDESC_PTR, tail_p);

 spin_unlock_irqrestore(&lp->rx_lock, flags);
}

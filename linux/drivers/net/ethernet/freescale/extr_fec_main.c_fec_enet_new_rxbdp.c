
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct fec_enet_private {unsigned long rx_align; TYPE_1__* pdev; } ;
struct bufdesc {int cbd_bufaddr; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 scalar_t__ FEC_ENET_RX_FRSIZE ;
 int cpu_to_fec32 (int ) ;
 int dma_map_single (int *,scalar_t__,scalar_t__,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int fec32_to_cpu (int ) ;
 scalar_t__ net_ratelimit () ;
 int netdev_err (struct net_device*,char*) ;
 struct fec_enet_private* netdev_priv (struct net_device*) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static int
fec_enet_new_rxbdp(struct net_device *ndev, struct bufdesc *bdp, struct sk_buff *skb)
{
 struct fec_enet_private *fep = netdev_priv(ndev);
 int off;

 off = ((unsigned long)skb->data) & fep->rx_align;
 if (off)
  skb_reserve(skb, fep->rx_align + 1 - off);

 bdp->cbd_bufaddr = cpu_to_fec32(dma_map_single(&fep->pdev->dev, skb->data, FEC_ENET_RX_FRSIZE - fep->rx_align, DMA_FROM_DEVICE));
 if (dma_mapping_error(&fep->pdev->dev, fec32_to_cpu(bdp->cbd_bufaddr))) {
  if (net_ratelimit())
   netdev_err(ndev, "Rx DMA memory map failed\n");
  return -ENOMEM;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xge_pdata {TYPE_2__* pdev; struct xge_desc_ring* rx_ring; } ;
struct xge_desc_ring {TYPE_1__* pkt_info; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {struct device dev; } ;
struct TYPE_3__ {int dma_addr; struct sk_buff* skb; } ;


 int DMA_FROM_DEVICE ;
 int XGENE_ENET_NUM_DESC ;
 int XGENE_ENET_STD_MTU ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 struct xge_pdata* netdev_priv (struct net_device*) ;

__attribute__((used)) static void xge_free_buffers(struct net_device *ndev)
{
 struct xge_pdata *pdata = netdev_priv(ndev);
 struct xge_desc_ring *ring = pdata->rx_ring;
 struct device *dev = &pdata->pdev->dev;
 struct sk_buff *skb;
 dma_addr_t dma_addr;
 int i;

 for (i = 0; i < XGENE_ENET_NUM_DESC; i++) {
  skb = ring->pkt_info[i].skb;
  dma_addr = ring->pkt_info[i].dma_addr;

  if (!skb)
   continue;

  dma_unmap_single(dev, dma_addr, XGENE_ENET_STD_MTU,
     DMA_FROM_DEVICE);
  dev_kfree_skb_any(skb);
 }
}

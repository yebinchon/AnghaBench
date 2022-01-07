
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct xge_pdata {TYPE_1__* pdev; } ;
struct xge_desc_ring {struct xge_desc_ring* pkt_info; int dma_addr; scalar_t__ desc_addr; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int XGENE_ENET_DESC_SIZE ;
 int XGENE_ENET_NUM_DESC ;
 int dma_free_coherent (struct device*,int,scalar_t__,int ) ;
 int kfree (struct xge_desc_ring*) ;
 struct xge_pdata* netdev_priv (struct net_device*) ;

__attribute__((used)) static void xge_delete_desc_ring(struct net_device *ndev,
     struct xge_desc_ring *ring)
{
 struct xge_pdata *pdata = netdev_priv(ndev);
 struct device *dev = &pdata->pdev->dev;
 u16 size;

 if (!ring)
  return;

 size = XGENE_ENET_DESC_SIZE * XGENE_ENET_NUM_DESC;
 if (ring->desc_addr)
  dma_free_coherent(dev, size, ring->desc_addr, ring->dma_addr);

 kfree(ring->pkt_info);
 kfree(ring);
}

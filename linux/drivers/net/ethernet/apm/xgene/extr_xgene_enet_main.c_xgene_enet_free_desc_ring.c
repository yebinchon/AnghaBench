
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_enet_pdata {TYPE_1__* ring_ops; } ;
struct xgene_enet_desc_ring {int dma; int desc_addr; int size; int ndev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* clear ) (struct xgene_enet_desc_ring*) ;} ;


 int devm_kfree (struct device*,struct xgene_enet_desc_ring*) ;
 int dmam_free_coherent (struct device*,int ,int ,int ) ;
 struct device* ndev_to_dev (int ) ;
 struct xgene_enet_pdata* netdev_priv (int ) ;
 int stub1 (struct xgene_enet_desc_ring*) ;

__attribute__((used)) static void xgene_enet_free_desc_ring(struct xgene_enet_desc_ring *ring)
{
 struct xgene_enet_pdata *pdata;
 struct device *dev;

 if (!ring)
  return;

 dev = ndev_to_dev(ring->ndev);
 pdata = netdev_priv(ring->ndev);

 if (ring->desc_addr) {
  pdata->ring_ops->clear(ring);
  dmam_free_coherent(dev, ring->size, ring->desc_addr, ring->dma);
 }
 devm_kfree(dev, ring);
}

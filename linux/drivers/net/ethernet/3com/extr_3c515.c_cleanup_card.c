
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ base_addr; scalar_t__ dma; } ;
struct corkscrew_private {scalar_t__ dev; int list; } ;


 int CORKSCREW_TOTAL_SIZE ;
 scalar_t__ EL3_CMD ;
 int TotalReset ;
 int free_dma (scalar_t__) ;
 int list_del_init (int *) ;
 struct corkscrew_private* netdev_priv (struct net_device*) ;
 int outw (int ,scalar_t__) ;
 int pnp_device_detach (int ) ;
 int release_region (scalar_t__,int ) ;
 int to_pnp_dev (scalar_t__) ;

__attribute__((used)) static void cleanup_card(struct net_device *dev)
{
 struct corkscrew_private *vp = netdev_priv(dev);
 list_del_init(&vp->list);
 if (dev->dma)
  free_dma(dev->dma);
 outw(TotalReset, dev->base_addr + EL3_CMD);
 release_region(dev->base_addr, CORKSCREW_TOTAL_SIZE);
 if (vp->dev)
  pnp_device_detach(to_pnp_dev(vp->dev));
}

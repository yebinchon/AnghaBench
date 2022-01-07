
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_sysport_tx_ring {scalar_t__ alloc_size; scalar_t__ size; int * cbs; int napi; } ;
struct bcm_sysport_priv {int netdev; struct bcm_sysport_tx_ring* tx_rings; } ;


 int TDMA_DISABLED ;
 int TDMA_STATUS ;
 int bcm_sysport_tx_clean (struct bcm_sysport_priv*,struct bcm_sysport_tx_ring*) ;
 int hw ;
 int kfree (int *) ;
 int napi_disable (int *) ;
 int netdev_warn (int ,char*) ;
 int netif_dbg (struct bcm_sysport_priv*,int ,int ,char*) ;
 int netif_napi_del (int *) ;
 int tdma_readl (struct bcm_sysport_priv*,int ) ;

__attribute__((used)) static void bcm_sysport_fini_tx_ring(struct bcm_sysport_priv *priv,
         unsigned int index)
{
 struct bcm_sysport_tx_ring *ring = &priv->tx_rings[index];
 u32 reg;


 reg = tdma_readl(priv, TDMA_STATUS);
 if (!(reg & TDMA_DISABLED))
  netdev_warn(priv->netdev, "TDMA not stopped!\n");





 if (!ring->cbs)
  return;

 napi_disable(&ring->napi);
 netif_napi_del(&ring->napi);

 bcm_sysport_tx_clean(priv, ring);

 kfree(ring->cbs);
 ring->cbs = ((void*)0);
 ring->size = 0;
 ring->alloc_size = 0;

 netif_dbg(priv, hw, priv->netdev, "TDMA fini done\n");
}

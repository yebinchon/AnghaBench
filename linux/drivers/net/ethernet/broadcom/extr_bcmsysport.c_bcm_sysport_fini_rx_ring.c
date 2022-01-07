
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bcm_sysport_priv {unsigned int num_rx_bds; int netdev; struct bcm_sysport_cb* rx_cbs; TYPE_1__* pdev; } ;
struct bcm_sysport_cb {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int RDMA_DISABLED ;
 int RDMA_STATUS ;
 int RX_BUF_LENGTH ;
 int bcm_sysport_free_cb (struct bcm_sysport_cb*) ;
 int dma_addr ;
 scalar_t__ dma_unmap_addr (struct bcm_sysport_cb*,int ) ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;
 int hw ;
 int kfree (struct bcm_sysport_cb*) ;
 int netdev_warn (int ,char*) ;
 int netif_dbg (struct bcm_sysport_priv*,int ,int ,char*) ;
 int rdma_readl (struct bcm_sysport_priv*,int ) ;

__attribute__((used)) static void bcm_sysport_fini_rx_ring(struct bcm_sysport_priv *priv)
{
 struct bcm_sysport_cb *cb;
 unsigned int i;
 u32 reg;


 reg = rdma_readl(priv, RDMA_STATUS);
 if (!(reg & RDMA_DISABLED))
  netdev_warn(priv->netdev, "RDMA not stopped!\n");

 for (i = 0; i < priv->num_rx_bds; i++) {
  cb = &priv->rx_cbs[i];
  if (dma_unmap_addr(cb, dma_addr))
   dma_unmap_single(&priv->pdev->dev,
      dma_unmap_addr(cb, dma_addr),
      RX_BUF_LENGTH, DMA_FROM_DEVICE);
  bcm_sysport_free_cb(cb);
 }

 kfree(priv->rx_cbs);
 priv->rx_cbs = ((void*)0);

 netif_dbg(priv, hw, priv->netdev, "RDMA fini done\n");
}

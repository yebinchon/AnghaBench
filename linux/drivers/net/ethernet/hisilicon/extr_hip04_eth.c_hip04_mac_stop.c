
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hip04_priv {scalar_t__* rx_phys; int dev; scalar_t__ phy; int napi; } ;


 int DMA_FROM_DEVICE ;
 int RX_BUF_SIZE ;
 int RX_DESC_NUM ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 int hip04_mac_disable (struct net_device*) ;
 int hip04_reset_ppe (struct hip04_priv*) ;
 int hip04_tx_reclaim (struct net_device*,int) ;
 int napi_disable (int *) ;
 struct hip04_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_stop (scalar_t__) ;

__attribute__((used)) static int hip04_mac_stop(struct net_device *ndev)
{
 struct hip04_priv *priv = netdev_priv(ndev);
 int i;

 napi_disable(&priv->napi);
 netif_stop_queue(ndev);
 hip04_mac_disable(ndev);
 hip04_tx_reclaim(ndev, 1);
 hip04_reset_ppe(priv);

 if (priv->phy)
  phy_stop(priv->phy);

 for (i = 0; i < RX_DESC_NUM; i++) {
  if (priv->rx_phys[i]) {
   dma_unmap_single(priv->dev, priv->rx_phys[i],
      RX_BUF_SIZE, DMA_FROM_DEVICE);
   priv->rx_phys[i] = 0;
  }
 }

 return 0;
}

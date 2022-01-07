
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hip04_priv {int napi; scalar_t__ phy; int * rx_phys; int dev; int * rx_buf; scalar_t__ tx_tail; scalar_t__ tx_head; scalar_t__ rx_cnt_remaining; scalar_t__ rx_head; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int EIO ;
 int RX_BUF_SIZE ;
 int RX_DESC_NUM ;
 int dma_map_single (int ,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int hip04_mac_enable (struct net_device*) ;
 int hip04_reset_ppe (struct hip04_priv*) ;
 int hip04_set_recv_desc (struct hip04_priv*,int ) ;
 int napi_enable (int *) ;
 struct hip04_priv* netdev_priv (struct net_device*) ;
 int netdev_reset_queue (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int phy_start (scalar_t__) ;

__attribute__((used)) static int hip04_mac_open(struct net_device *ndev)
{
 struct hip04_priv *priv = netdev_priv(ndev);
 int i;

 priv->rx_head = 0;
 priv->rx_cnt_remaining = 0;
 priv->tx_head = 0;
 priv->tx_tail = 0;
 hip04_reset_ppe(priv);

 for (i = 0; i < RX_DESC_NUM; i++) {
  dma_addr_t phys;

  phys = dma_map_single(priv->dev, priv->rx_buf[i],
          RX_BUF_SIZE, DMA_FROM_DEVICE);
  if (dma_mapping_error(priv->dev, phys))
   return -EIO;

  priv->rx_phys[i] = phys;
  hip04_set_recv_desc(priv, phys);
 }

 if (priv->phy)
  phy_start(priv->phy);

 netdev_reset_queue(ndev);
 netif_start_queue(ndev);
 hip04_mac_enable(ndev);
 napi_enable(&priv->napi);

 return 0;
}

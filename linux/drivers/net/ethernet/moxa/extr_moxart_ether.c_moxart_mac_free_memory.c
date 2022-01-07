
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dev; } ;
struct moxart_mac_priv_t {int rx_buf_base; int tx_buf_base; int rx_base; scalar_t__ rx_desc_base; TYPE_1__* pdev; int tx_base; scalar_t__ tx_desc_base; int rx_buf_size; int * rx_mapping; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int RX_DESC_NUM ;
 int RX_REG_DESC_SIZE ;
 int TX_DESC_NUM ;
 int TX_REG_DESC_SIZE ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int kfree (int ) ;
 struct moxart_mac_priv_t* netdev_priv (struct net_device*) ;

__attribute__((used)) static void moxart_mac_free_memory(struct net_device *ndev)
{
 struct moxart_mac_priv_t *priv = netdev_priv(ndev);
 int i;

 for (i = 0; i < RX_DESC_NUM; i++)
  dma_unmap_single(&ndev->dev, priv->rx_mapping[i],
     priv->rx_buf_size, DMA_FROM_DEVICE);

 if (priv->tx_desc_base)
  dma_free_coherent(&priv->pdev->dev,
      TX_REG_DESC_SIZE * TX_DESC_NUM,
      priv->tx_desc_base, priv->tx_base);

 if (priv->rx_desc_base)
  dma_free_coherent(&priv->pdev->dev,
      RX_REG_DESC_SIZE * RX_DESC_NUM,
      priv->rx_desc_base, priv->rx_base);

 kfree(priv->tx_buf_base);
 kfree(priv->rx_buf_base);
}

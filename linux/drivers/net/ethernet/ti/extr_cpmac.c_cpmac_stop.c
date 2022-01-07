
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct net_device {int dev; int irq; int phydev; } ;
struct cpmac_priv {int ring_size; int dma_ring; TYPE_1__* desc_ring; TYPE_1__* rx_head; int pdev; int regs; int napi; int reset_work; } ;
struct cpmac_desc {int dummy; } ;
struct TYPE_2__ {scalar_t__ skb; int data_mapping; } ;


 int CPMAC_MBP ;
 size_t CPMAC_QUEUES ;
 int CPMAC_RX_PTR (int ) ;
 int CPMAC_SKB_SIZE ;
 int CPMAC_TX_PTR (int) ;
 int DMA_FROM_DEVICE ;
 int IORESOURCE_MEM ;
 int cancel_work_sync (int *) ;
 int cpmac_hw_stop (struct net_device*) ;
 int cpmac_write (int ,int ,int ) ;
 int dma_free_coherent (int *,int,TYPE_1__*,int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int free_irq (int ,struct net_device*) ;
 int iounmap (int ) ;
 int kfree_skb (scalar_t__) ;
 int napi_disable (int *) ;
 struct cpmac_priv* netdev_priv (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int phy_stop (int ) ;
 struct resource* platform_get_resource_byname (int ,int ,char*) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int cpmac_stop(struct net_device *dev)
{
 int i;
 struct cpmac_priv *priv = netdev_priv(dev);
 struct resource *mem;

 netif_tx_stop_all_queues(dev);

 cancel_work_sync(&priv->reset_work);
 napi_disable(&priv->napi);
 phy_stop(dev->phydev);

 cpmac_hw_stop(dev);

 for (i = 0; i < 8; i++)
  cpmac_write(priv->regs, CPMAC_TX_PTR(i), 0);
 cpmac_write(priv->regs, CPMAC_RX_PTR(0), 0);
 cpmac_write(priv->regs, CPMAC_MBP, 0);

 free_irq(dev->irq, dev);
 iounmap(priv->regs);
 mem = platform_get_resource_byname(priv->pdev, IORESOURCE_MEM, "regs");
 release_mem_region(mem->start, resource_size(mem));
 priv->rx_head = &priv->desc_ring[CPMAC_QUEUES];
 for (i = 0; i < priv->ring_size; i++) {
  if (priv->rx_head[i].skb) {
   dma_unmap_single(&dev->dev,
      priv->rx_head[i].data_mapping,
      CPMAC_SKB_SIZE,
      DMA_FROM_DEVICE);
   kfree_skb(priv->rx_head[i].skb);
  }
 }

 dma_free_coherent(&dev->dev, sizeof(struct cpmac_desc) *
     (CPMAC_QUEUES + priv->ring_size),
     priv->desc_ring, priv->dma_ring);

 return 0;
}

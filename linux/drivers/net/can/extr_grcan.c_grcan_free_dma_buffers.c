
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct grcan_dma {int base_handle; int base_buf; int base_size; } ;
struct grcan_priv {struct grcan_dma dma; } ;


 int dma_free_coherent (int *,int ,int ,int ) ;
 int memset (struct grcan_dma*,int ,int) ;
 struct grcan_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void grcan_free_dma_buffers(struct net_device *dev)
{
 struct grcan_priv *priv = netdev_priv(dev);
 struct grcan_dma *dma = &priv->dma;

 dma_free_coherent(&dev->dev, dma->base_size, dma->base_buf,
     dma->base_handle);
 memset(dma, 0, sizeof(*dma));
}

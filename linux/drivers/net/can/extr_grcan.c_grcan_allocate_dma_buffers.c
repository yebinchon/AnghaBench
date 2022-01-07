
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct grcan_dma_buffer {size_t size; size_t handle; scalar_t__ buf; } ;
struct grcan_dma {size_t base_handle; scalar_t__ base_buf; struct grcan_dma_buffer rx; struct grcan_dma_buffer tx; scalar_t__ base_size; } ;
struct grcan_priv {struct grcan_dma dma; } ;


 void* ALIGN (size_t,scalar_t__) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ GRCAN_BUFFER_ALIGNMENT ;
 scalar_t__ dma_alloc_coherent (int *,scalar_t__,size_t*,int ) ;
 size_t max (size_t,size_t) ;
 size_t min (size_t,size_t) ;
 struct grcan_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int grcan_allocate_dma_buffers(struct net_device *dev,
          size_t tsize, size_t rsize)
{
 struct grcan_priv *priv = netdev_priv(dev);
 struct grcan_dma *dma = &priv->dma;
 struct grcan_dma_buffer *large = rsize > tsize ? &dma->rx : &dma->tx;
 struct grcan_dma_buffer *small = rsize > tsize ? &dma->tx : &dma->rx;
 size_t shift;




 size_t maxs = max(tsize, rsize);
 size_t lsize = ALIGN(maxs, GRCAN_BUFFER_ALIGNMENT);


 size_t ssize = min(tsize, rsize);


 dma->base_size = lsize + ssize + GRCAN_BUFFER_ALIGNMENT;
 dma->base_buf = dma_alloc_coherent(&dev->dev,
        dma->base_size,
        &dma->base_handle,
        GFP_KERNEL);

 if (!dma->base_buf)
  return -ENOMEM;

 dma->tx.size = tsize;
 dma->rx.size = rsize;

 large->handle = ALIGN(dma->base_handle, GRCAN_BUFFER_ALIGNMENT);
 small->handle = large->handle + lsize;
 shift = large->handle - dma->base_handle;

 large->buf = dma->base_buf + shift;
 small->buf = large->buf + lsize;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mvneta_bm_pool {int buf_size; struct mvneta_bm* priv; } ;
struct mvneta_bm {TYPE_1__* pdev; } ;
struct hwbm_pool {scalar_t__ priv; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int dma_map_single (int *,void*,int ,int ) ;
 int dma_mapping_error (int *,int ) ;
 int mvneta_bm_pool_put_bp (struct mvneta_bm*,struct mvneta_bm_pool*,int ) ;
 scalar_t__ unlikely (int ) ;

int mvneta_bm_construct(struct hwbm_pool *hwbm_pool, void *buf)
{
 struct mvneta_bm_pool *bm_pool =
  (struct mvneta_bm_pool *)hwbm_pool->priv;
 struct mvneta_bm *priv = bm_pool->priv;
 dma_addr_t phys_addr;





 *(u32 *)buf = (u32)buf;
 phys_addr = dma_map_single(&priv->pdev->dev, buf, bm_pool->buf_size,
       DMA_FROM_DEVICE);
 if (unlikely(dma_mapping_error(&priv->pdev->dev, phys_addr)))
  return -ENOMEM;

 mvneta_bm_pool_put_bp(priv, bm_pool, phys_addr);
 return 0;
}

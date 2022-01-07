
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct mvpp2_bm_pool {int size_bytes; int size; scalar_t__ buf_num; scalar_t__ pkt_size; int id; int dma_addr; scalar_t__ virt_addr; } ;
struct mvpp2 {scalar_t__ hw_version; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_ALIGNED (unsigned long,int) ;
 scalar_t__ MVPP21 ;
 int MVPP2_BM_POOL_BASE_REG (int ) ;
 int MVPP2_BM_POOL_CTRL_REG (int ) ;
 int MVPP2_BM_POOL_PTR_ALIGN ;
 int MVPP2_BM_POOL_SIZE_REG (int ) ;
 int MVPP2_BM_START_MASK ;
 int dev_err (struct device*,char*,int ,int) ;
 scalar_t__ dma_alloc_coherent (struct device*,int,int *,int ) ;
 int dma_free_coherent (struct device*,int,scalar_t__,int ) ;
 int lower_32_bits (int ) ;
 int mvpp2_read (struct mvpp2*,int ) ;
 int mvpp2_write (struct mvpp2*,int ,int) ;

__attribute__((used)) static int mvpp2_bm_pool_create(struct device *dev, struct mvpp2 *priv,
    struct mvpp2_bm_pool *bm_pool, int size)
{
 u32 val;




 if (!IS_ALIGNED(size, 16))
  return -EINVAL;




 if (priv->hw_version == MVPP21)
  bm_pool->size_bytes = 2 * sizeof(u32) * size;
 else
  bm_pool->size_bytes = 2 * sizeof(u64) * size;

 bm_pool->virt_addr = dma_alloc_coherent(dev, bm_pool->size_bytes,
      &bm_pool->dma_addr,
      GFP_KERNEL);
 if (!bm_pool->virt_addr)
  return -ENOMEM;

 if (!IS_ALIGNED((unsigned long)bm_pool->virt_addr,
   MVPP2_BM_POOL_PTR_ALIGN)) {
  dma_free_coherent(dev, bm_pool->size_bytes,
      bm_pool->virt_addr, bm_pool->dma_addr);
  dev_err(dev, "BM pool %d is not %d bytes aligned\n",
   bm_pool->id, MVPP2_BM_POOL_PTR_ALIGN);
  return -ENOMEM;
 }

 mvpp2_write(priv, MVPP2_BM_POOL_BASE_REG(bm_pool->id),
      lower_32_bits(bm_pool->dma_addr));
 mvpp2_write(priv, MVPP2_BM_POOL_SIZE_REG(bm_pool->id), size);

 val = mvpp2_read(priv, MVPP2_BM_POOL_CTRL_REG(bm_pool->id));
 val |= MVPP2_BM_START_MASK;
 mvpp2_write(priv, MVPP2_BM_POOL_CTRL_REG(bm_pool->id), val);

 bm_pool->size = size;
 bm_pool->pkt_size = 0;
 bm_pool->buf_num = 0;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int size; } ;
struct mvneta_bm_pool {int id; int phys_addr; scalar_t__ virt_addr; TYPE_1__ hwbm_pool; } ;
struct mvneta_bm {struct platform_device* pdev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IS_ALIGNED (int ,int ) ;
 int MVNETA_BM_POOL_BASE_REG (int ) ;
 int MVNETA_BM_POOL_PTR_ALIGN ;
 int dev_err (int *,char*,int ,int ) ;
 scalar_t__ dma_alloc_coherent (int *,int,int *,int ) ;
 int dma_free_coherent (int *,int,scalar_t__,int ) ;
 int mvebu_mbus_get_dram_win_info (int ,int *,int *) ;
 int mvneta_bm_pool_enable (struct mvneta_bm*,int ) ;
 int mvneta_bm_pool_target_set (struct mvneta_bm*,int ,int ,int ) ;
 int mvneta_bm_write (struct mvneta_bm*,int ,int ) ;

__attribute__((used)) static int mvneta_bm_pool_create(struct mvneta_bm *priv,
     struct mvneta_bm_pool *bm_pool)
{
 struct platform_device *pdev = priv->pdev;
 u8 target_id, attr;
 int size_bytes, err;
 size_bytes = sizeof(u32) * bm_pool->hwbm_pool.size;
 bm_pool->virt_addr = dma_alloc_coherent(&pdev->dev, size_bytes,
      &bm_pool->phys_addr,
      GFP_KERNEL);
 if (!bm_pool->virt_addr)
  return -ENOMEM;

 if (!IS_ALIGNED((u32)bm_pool->virt_addr, MVNETA_BM_POOL_PTR_ALIGN)) {
  dma_free_coherent(&pdev->dev, size_bytes, bm_pool->virt_addr,
      bm_pool->phys_addr);
  dev_err(&pdev->dev, "BM pool %d is not %d bytes aligned\n",
   bm_pool->id, MVNETA_BM_POOL_PTR_ALIGN);
  return -ENOMEM;
 }

 err = mvebu_mbus_get_dram_win_info(bm_pool->phys_addr, &target_id,
        &attr);
 if (err < 0) {
  dma_free_coherent(&pdev->dev, size_bytes, bm_pool->virt_addr,
      bm_pool->phys_addr);
  return err;
 }


 mvneta_bm_write(priv, MVNETA_BM_POOL_BASE_REG(bm_pool->id),
   bm_pool->phys_addr);

 mvneta_bm_pool_target_set(priv, bm_pool->id, target_id, attr);
 mvneta_bm_pool_enable(priv, bm_pool->id);

 return 0;
}

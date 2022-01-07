
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpdma_desc_pool {int phys; scalar_t__ cpumap; int mem_size; int gen_pool; } ;
struct cpdma_ctlr {int dev; struct cpdma_desc_pool* pool; } ;


 int WARN (int,char*,scalar_t__,scalar_t__) ;
 int dma_free_coherent (int ,int ,scalar_t__,int ) ;
 scalar_t__ gen_pool_avail (int ) ;
 scalar_t__ gen_pool_size (int ) ;

__attribute__((used)) static void cpdma_desc_pool_destroy(struct cpdma_ctlr *ctlr)
{
 struct cpdma_desc_pool *pool = ctlr->pool;

 if (!pool)
  return;

 WARN(gen_pool_size(pool->gen_pool) != gen_pool_avail(pool->gen_pool),
      "cpdma_desc_pool size %zd != avail %zd",
      gen_pool_size(pool->gen_pool),
      gen_pool_avail(pool->gen_pool));
 if (pool->cpumap)
  dma_free_coherent(ctlr->dev, pool->mem_size, pool->cpumap,
      pool->phys);
}

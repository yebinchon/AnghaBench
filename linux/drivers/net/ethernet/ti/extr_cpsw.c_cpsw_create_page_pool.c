
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_pool_params {int pool_size; int dev; int dma_dir; int nid; int flags; scalar_t__ order; } ;
struct page_pool {int dummy; } ;
struct cpsw_common {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 scalar_t__ IS_ERR (struct page_pool*) ;
 int NUMA_NO_NODE ;
 int PP_FLAG_DMA_MAP ;
 int dev_err (int ,char*) ;
 struct page_pool* page_pool_create (struct page_pool_params*) ;

__attribute__((used)) static struct page_pool *cpsw_create_page_pool(struct cpsw_common *cpsw,
            int size)
{
 struct page_pool_params pp_params;
 struct page_pool *pool;

 pp_params.order = 0;
 pp_params.flags = PP_FLAG_DMA_MAP;
 pp_params.pool_size = size;
 pp_params.nid = NUMA_NO_NODE;
 pp_params.dma_dir = DMA_BIDIRECTIONAL;
 pp_params.dev = cpsw->dev;

 pool = page_pool_create(&pp_params);
 if (IS_ERR(pool))
  dev_err(cpsw->dev, "cannot create rx page pool\n");

 return pool;
}

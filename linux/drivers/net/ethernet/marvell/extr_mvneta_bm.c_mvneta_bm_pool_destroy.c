
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hwbm_pool {int size; scalar_t__ buf_num; } ;
struct mvneta_bm_pool {int port_map; int id; int * virt_addr; int phys_addr; int type; struct hwbm_pool hwbm_pool; } ;
struct mvneta_bm {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int MVNETA_BM_FREE ;
 int WARN (int,char*,int ) ;
 int dma_free_coherent (int *,int,int *,int ) ;
 int mvneta_bm_bufs_free (struct mvneta_bm*,struct mvneta_bm_pool*,int) ;
 int mvneta_bm_pool_disable (struct mvneta_bm*,int ) ;

void mvneta_bm_pool_destroy(struct mvneta_bm *priv,
       struct mvneta_bm_pool *bm_pool, u8 port_map)
{
 struct hwbm_pool *hwbm_pool = &bm_pool->hwbm_pool;
 bm_pool->port_map &= ~port_map;
 if (bm_pool->port_map)
  return;

 bm_pool->type = MVNETA_BM_FREE;

 mvneta_bm_bufs_free(priv, bm_pool, port_map);
 if (hwbm_pool->buf_num)
  WARN(1, "cannot free all buffers in pool %d\n", bm_pool->id);

 if (bm_pool->virt_addr) {
  dma_free_coherent(&priv->pdev->dev,
      sizeof(u32) * hwbm_pool->size,
      bm_pool->virt_addr, bm_pool->phys_addr);
  bm_pool->virt_addr = ((void*)0);
 }

 mvneta_bm_pool_disable(priv, bm_pool->id);
}

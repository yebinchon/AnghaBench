
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mvpp2_bm_pool {int dma_addr; int virt_addr; int size_bytes; int id; int buf_num; } ;
struct mvpp2 {int dummy; } ;
struct device {int dummy; } ;


 int MVPP2_BM_POOL_CTRL_REG (int ) ;
 int MVPP2_BM_STOP_MASK ;
 int WARN (int,char*,int ,int ) ;
 int dma_free_coherent (struct device*,int ,int ,int ) ;
 int mvpp2_bm_bufs_free (struct device*,struct mvpp2*,struct mvpp2_bm_pool*,int) ;
 int mvpp2_check_hw_buf_num (struct mvpp2*,struct mvpp2_bm_pool*) ;
 int mvpp2_read (struct mvpp2*,int ) ;
 int mvpp2_write (struct mvpp2*,int ,int ) ;

__attribute__((used)) static int mvpp2_bm_pool_destroy(struct device *dev, struct mvpp2 *priv,
     struct mvpp2_bm_pool *bm_pool)
{
 int buf_num;
 u32 val;

 buf_num = mvpp2_check_hw_buf_num(priv, bm_pool);
 mvpp2_bm_bufs_free(dev, priv, bm_pool, buf_num);


 buf_num = mvpp2_check_hw_buf_num(priv, bm_pool);
 if (buf_num) {
  WARN(1, "cannot free all buffers in pool %d, buf_num left %d\n",
       bm_pool->id, bm_pool->buf_num);
  return 0;
 }

 val = mvpp2_read(priv, MVPP2_BM_POOL_CTRL_REG(bm_pool->id));
 val |= MVPP2_BM_STOP_MASK;
 mvpp2_write(priv, MVPP2_BM_POOL_CTRL_REG(bm_pool->id), val);

 dma_free_coherent(dev, bm_pool->size_bytes,
     bm_pool->virt_addr,
     bm_pool->dma_addr);
 return 0;
}

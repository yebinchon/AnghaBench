
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_bm_pool {int buf_num; int buf_size; int id; } ;
struct mvpp2 {int dummy; } ;
struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int WARN (int,char*,int ,int) ;
 int dma_unmap_single (struct device*,int ,int ,int ) ;
 int mvpp2_bm_bufs_get_addrs (struct device*,struct mvpp2*,struct mvpp2_bm_pool*,int *,int *) ;
 int mvpp2_frag_free (struct mvpp2_bm_pool*,void*) ;
 scalar_t__ phys_to_virt (int ) ;

__attribute__((used)) static void mvpp2_bm_bufs_free(struct device *dev, struct mvpp2 *priv,
          struct mvpp2_bm_pool *bm_pool, int buf_num)
{
 int i;

 if (buf_num > bm_pool->buf_num) {
  WARN(1, "Pool does not have so many bufs pool(%d) bufs(%d)\n",
       bm_pool->id, buf_num);
  buf_num = bm_pool->buf_num;
 }

 for (i = 0; i < buf_num; i++) {
  dma_addr_t buf_dma_addr;
  phys_addr_t buf_phys_addr;
  void *data;

  mvpp2_bm_bufs_get_addrs(dev, priv, bm_pool,
     &buf_dma_addr, &buf_phys_addr);

  dma_unmap_single(dev, buf_dma_addr,
     bm_pool->buf_size, DMA_FROM_DEVICE);

  data = (void *)phys_to_virt(buf_phys_addr);
  if (!data)
   break;

  mvpp2_frag_free(bm_pool, data);
 }


 bm_pool->buf_num -= i;
}

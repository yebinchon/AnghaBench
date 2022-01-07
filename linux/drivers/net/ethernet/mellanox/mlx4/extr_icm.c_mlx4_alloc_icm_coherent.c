
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_icm_buf {int size; int dma_addr; int addr; } ;
struct device {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int PAGE_SIZE ;
 int dma_alloc_coherent (struct device*,int,int *,int ) ;
 int dma_free_coherent (struct device*,int,int ,int ) ;
 scalar_t__ offset_in_page (int ) ;

__attribute__((used)) static int mlx4_alloc_icm_coherent(struct device *dev, struct mlx4_icm_buf *buf,
       int order, gfp_t gfp_mask)
{
 buf->addr = dma_alloc_coherent(dev, PAGE_SIZE << order,
           &buf->dma_addr, gfp_mask);
 if (!buf->addr)
  return -ENOMEM;

 if (offset_in_page(buf->addr)) {
  dma_free_coherent(dev, PAGE_SIZE << order, buf->addr,
      buf->dma_addr);
  return -ENOMEM;
 }

 buf->size = PAGE_SIZE << order;
 return 0;
}

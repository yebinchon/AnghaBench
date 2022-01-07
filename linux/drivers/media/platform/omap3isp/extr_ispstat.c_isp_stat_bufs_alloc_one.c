
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ispstat_buffer {scalar_t__ dma_addr; int * virt_addr; int sgt; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * dma_alloc_coherent (struct device*,unsigned int,scalar_t__*,int ) ;
 int dma_free_coherent (struct device*,unsigned int,int *,scalar_t__) ;
 int dma_get_sgtable (struct device*,int *,int *,scalar_t__,unsigned int) ;

__attribute__((used)) static int isp_stat_bufs_alloc_one(struct device *dev,
       struct ispstat_buffer *buf,
       unsigned int size)
{
 int ret;

 buf->virt_addr = dma_alloc_coherent(dev, size, &buf->dma_addr,
         GFP_KERNEL);
 if (!buf->virt_addr)
  return -ENOMEM;

 ret = dma_get_sgtable(dev, &buf->sgt, buf->virt_addr, buf->dma_addr,
         size);
 if (ret < 0) {
  dma_free_coherent(dev, size, buf->virt_addr, buf->dma_addr);
  buf->virt_addr = ((void*)0);
  buf->dma_addr = 0;
  return ret;
 }

 return 0;
}

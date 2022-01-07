
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_dma_contig_memory {unsigned long size; int vaddr; int dma_handle; } ;
struct device {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int dev_dbg (struct device*,char*,int ,unsigned long) ;
 int dev_err (struct device*,char*,unsigned long) ;
 int dma_alloc_coherent (struct device*,unsigned long,int *,int ) ;

__attribute__((used)) static int __videobuf_dc_alloc(struct device *dev,
          struct videobuf_dma_contig_memory *mem,
          unsigned long size, gfp_t flags)
{
 mem->size = size;
 mem->vaddr = dma_alloc_coherent(dev, mem->size,
     &mem->dma_handle, flags);

 if (!mem->vaddr) {
  dev_err(dev, "memory alloc size %ld failed\n", mem->size);
  return -ENOMEM;
 }

 dev_dbg(dev, "dma mapped data is at %p (%ld)\n", mem->vaddr, mem->size);

 return 0;
}

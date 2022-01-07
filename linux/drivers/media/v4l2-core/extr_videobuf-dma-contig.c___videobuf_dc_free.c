
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_dma_contig_memory {int * vaddr; int dma_handle; int size; } ;
struct device {int dummy; } ;


 int dma_free_coherent (struct device*,int ,int *,int ) ;

__attribute__((used)) static void __videobuf_dc_free(struct device *dev,
          struct videobuf_dma_contig_memory *mem)
{
 dma_free_coherent(dev, mem->size, mem->vaddr, mem->dma_handle);

 mem->vaddr = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_dma_contig_memory {scalar_t__ size; scalar_t__ dma_handle; } ;



__attribute__((used)) static void videobuf_dma_contig_user_put(struct videobuf_dma_contig_memory *mem)
{
 mem->dma_handle = 0;
 mem->size = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_queue {int dev; } ;
struct videobuf_dma_contig_memory {int * vaddr; int magic; } ;
struct videobuf_buffer {scalar_t__ memory; scalar_t__ baddr; struct videobuf_dma_contig_memory* priv; } ;


 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_DC_MEM ;
 scalar_t__ V4L2_MEMORY_USERPTR ;
 int __videobuf_dc_free (int ,struct videobuf_dma_contig_memory*) ;
 int videobuf_dma_contig_user_put (struct videobuf_dma_contig_memory*) ;

void videobuf_dma_contig_free(struct videobuf_queue *q,
         struct videobuf_buffer *buf)
{
 struct videobuf_dma_contig_memory *mem = buf->priv;







 if (buf->memory != V4L2_MEMORY_USERPTR)
  return;

 if (!mem)
  return;

 MAGIC_CHECK(mem->magic, MAGIC_DC_MEM);


 if (buf->baddr) {
  videobuf_dma_contig_user_put(mem);
  return;
 }


 if (mem->vaddr) {
  __videobuf_dc_free(q->dev, mem);
  mem->vaddr = ((void*)0);
 }
}

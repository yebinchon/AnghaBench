
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videobuf_dmabuf {int dummy; } ;
struct videobuf_dma_sg_memory {struct videobuf_dmabuf dma; int magic; } ;
struct videobuf_buffer {struct videobuf_dma_sg_memory* priv; } ;


 int BUG_ON (int) ;
 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_SG_MEM ;

struct videobuf_dmabuf *videobuf_to_dma(struct videobuf_buffer *buf)
{
 struct videobuf_dma_sg_memory *mem = buf->priv;
 BUG_ON(!mem);

 MAGIC_CHECK(mem->magic, MAGIC_SG_MEM);

 return &mem->dma;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {int dev; } ;
struct TYPE_2__ {int direction; int nr_pages; int sglist; int magic; int sglen; } ;
struct videobuf_dma_sg_memory {TYPE_1__ dma; int magic; } ;
struct videobuf_buffer {struct videobuf_dma_sg_memory* priv; } ;


 int BUG_ON (int) ;
 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_DMABUF ;
 int MAGIC_SG_MEM ;
 int dma_sync_sg_for_cpu (int ,int ,int ,int ) ;

__attribute__((used)) static int __videobuf_sync(struct videobuf_queue *q,
      struct videobuf_buffer *buf)
{
 struct videobuf_dma_sg_memory *mem = buf->priv;
 BUG_ON(!mem || !mem->dma.sglen);

 MAGIC_CHECK(mem->magic, MAGIC_SG_MEM);
 MAGIC_CHECK(mem->dma.magic, MAGIC_DMABUF);

 dma_sync_sg_for_cpu(q->dev, mem->dma.sglist,
       mem->dma.nr_pages, mem->dma.direction);

 return 0;
}

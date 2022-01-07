
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct videobuf_queue {int dev; } ;
struct videobuf_dmabuf {int dummy; } ;
struct TYPE_5__ {int state; } ;
struct bttv_buffer {TYPE_2__ vb; int top; int bottom; } ;
struct TYPE_4__ {int pci; } ;
struct bttv {TYPE_1__ c; } ;


 int BUG_ON (int ) ;
 int VIDEOBUF_NEEDS_INIT ;
 int btcx_riscmem_free (int ,int *) ;
 int in_interrupt () ;
 int videobuf_dma_free (struct videobuf_dmabuf*) ;
 int videobuf_dma_unmap (int ,struct videobuf_dmabuf*) ;
 struct videobuf_dmabuf* videobuf_to_dma (TYPE_2__*) ;
 int videobuf_waiton (struct videobuf_queue*,TYPE_2__*,int ,int ) ;

void
bttv_dma_free(struct videobuf_queue *q,struct bttv *btv, struct bttv_buffer *buf)
{
 struct videobuf_dmabuf *dma=videobuf_to_dma(&buf->vb);

 BUG_ON(in_interrupt());
 videobuf_waiton(q, &buf->vb, 0, 0);
 videobuf_dma_unmap(q->dev, dma);
 videobuf_dma_free(dma);
 btcx_riscmem_free(btv->c.pci,&buf->bottom);
 btcx_riscmem_free(btv->c.pci,&buf->top);
 buf->vb.state = VIDEOBUF_NEEDS_INIT;
}

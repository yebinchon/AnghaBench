
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_buffer {int state; } ;
struct viu_buf {struct videobuf_buffer vb; } ;
struct videobuf_queue {TYPE_1__* int_ops; } ;
struct TYPE_2__ {void* (* vaddr ) (struct videobuf_buffer*) ;} ;


 int BUG_ON (int ) ;
 int VIDEOBUF_NEEDS_INIT ;
 int in_interrupt () ;
 void* stub1 (struct videobuf_buffer*) ;
 int videobuf_dma_contig_free (struct videobuf_queue*,struct videobuf_buffer*) ;
 int videobuf_waiton (struct videobuf_queue*,struct videobuf_buffer*,int ,int ) ;

__attribute__((used)) static void free_buffer(struct videobuf_queue *vq, struct viu_buf *buf)
{
 struct videobuf_buffer *vb = &buf->vb;
 void *vaddr = ((void*)0);

 BUG_ON(in_interrupt());

 videobuf_waiton(vq, &buf->vb, 0, 0);

 if (vq->int_ops && vq->int_ops->vaddr)
  vaddr = vq->int_ops->vaddr(vb);

 if (vaddr)
  videobuf_dma_contig_free(vq, &buf->vb);

 buf->vb.state = VIDEOBUF_NEEDS_INIT;
}

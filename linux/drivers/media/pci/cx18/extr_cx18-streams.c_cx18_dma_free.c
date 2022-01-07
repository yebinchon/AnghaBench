
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct videobuf_queue {int dummy; } ;
struct TYPE_3__ {int state; } ;
struct cx18_videobuf_buffer {TYPE_1__ vb; } ;
struct cx18_stream {int dummy; } ;


 int VIDEOBUF_NEEDS_INIT ;
 int videobuf_vmalloc_free (TYPE_1__*) ;
 int videobuf_waiton (struct videobuf_queue*,TYPE_1__*,int ,int ) ;

__attribute__((used)) static void cx18_dma_free(struct videobuf_queue *q,
 struct cx18_stream *s, struct cx18_videobuf_buffer *buf)
{
 videobuf_waiton(q, &buf->vb, 0, 0);
 videobuf_vmalloc_free(&buf->vb);
 buf->vb.state = VIDEOBUF_NEEDS_INIT;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videobuf_queue {TYPE_1__* int_ops; } ;
struct videobuf_buffer {int magic; } ;
struct v4l2_framebuffer {int dummy; } ;
struct TYPE_2__ {int magic; } ;


 int CALL (struct videobuf_queue*,int ,struct videobuf_queue*,struct videobuf_buffer*,struct v4l2_framebuffer*) ;
 int MAGIC_BUFFER ;
 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_QTYPE_OPS ;
 int iolock ;

int videobuf_iolock(struct videobuf_queue *q, struct videobuf_buffer *vb,
      struct v4l2_framebuffer *fbuf)
{
 MAGIC_CHECK(vb->magic, MAGIC_BUFFER);
 MAGIC_CHECK(q->int_ops->magic, MAGIC_QTYPE_OPS);

 return CALL(q, iolock, q, vb, fbuf);
}

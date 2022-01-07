
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_queue {int type; } ;
struct v4l2_m2m_ctx {int dummy; } ;
struct TYPE_6__ {int offset; TYPE_2__* planes; } ;
struct v4l2_buffer {scalar_t__ memory; unsigned int length; TYPE_3__ m; int type; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int mem_offset; } ;
struct TYPE_5__ {TYPE_1__ m; } ;


 scalar_t__ DST_QUEUE_OFF_BASE ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 scalar_t__ V4L2_TYPE_IS_MULTIPLANAR (int ) ;
 int V4L2_TYPE_IS_OUTPUT (int ) ;
 struct vb2_queue* v4l2_m2m_get_vq (struct v4l2_m2m_ctx*,int ) ;
 int vb2_querybuf (struct vb2_queue*,struct v4l2_buffer*) ;

int v4l2_m2m_querybuf(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
        struct v4l2_buffer *buf)
{
 struct vb2_queue *vq;
 int ret = 0;
 unsigned int i;

 vq = v4l2_m2m_get_vq(m2m_ctx, buf->type);
 ret = vb2_querybuf(vq, buf);


 if (buf->memory == V4L2_MEMORY_MMAP && !V4L2_TYPE_IS_OUTPUT(vq->type)) {
  if (V4L2_TYPE_IS_MULTIPLANAR(vq->type)) {
   for (i = 0; i < buf->length; ++i)
    buf->m.planes[i].m.mem_offset
     += DST_QUEUE_OFF_BASE;
  } else {
   buf->m.offset += DST_QUEUE_OFF_BASE;
  }
 }

 return ret;
}

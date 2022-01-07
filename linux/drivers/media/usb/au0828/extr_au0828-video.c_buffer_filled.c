
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timestamp; struct vb2_queue* vb2_queue; } ;
struct vb2_v4l2_buffer {TYPE_1__ vb2_buf; int field; scalar_t__ sequence; } ;
struct vb2_queue {scalar_t__ type; } ;
struct au0828_dmaqueue {int dummy; } ;
struct au0828_dev {int vbi_frame_count; int frame_count; } ;
struct au0828_buffer {int top_field; struct vb2_v4l2_buffer vb; } ;


 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_INTERLACED ;
 int VB2_BUF_STATE_DONE ;
 int au0828_isocdbg (char*,struct au0828_buffer*,int ) ;
 int ktime_get_ns () ;
 int vb2_buffer_done (TYPE_1__*,int ) ;

__attribute__((used)) static inline void buffer_filled(struct au0828_dev *dev,
     struct au0828_dmaqueue *dma_q,
     struct au0828_buffer *buf)
{
 struct vb2_v4l2_buffer *vb = &buf->vb;
 struct vb2_queue *q = vb->vb2_buf.vb2_queue;


 au0828_isocdbg("[%p/%d] wakeup\n", buf, buf->top_field);

 if (q->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  vb->sequence = dev->frame_count++;
 else
  vb->sequence = dev->vbi_frame_count++;

 vb->field = V4L2_FIELD_INTERLACED;
 vb->vb2_buf.timestamp = ktime_get_ns();
 vb2_buffer_done(&vb->vb2_buf, VB2_BUF_STATE_DONE);
}

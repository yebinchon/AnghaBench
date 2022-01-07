
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vsp1_pipeline {int sequence; } ;
struct TYPE_7__ {int timestamp; } ;
struct TYPE_5__ {TYPE_3__ vb2_buf; int sequence; } ;
struct vsp1_histogram_buffer {TYPE_1__ buf; } ;
struct TYPE_6__ {struct vsp1_pipeline* pipe; } ;
struct vsp1_histogram {int readout; int irqlock; int wait_queue; TYPE_2__ entity; } ;


 int VB2_BUF_STATE_DONE ;
 int ktime_get_ns () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vb2_buffer_done (TYPE_3__*,int ) ;
 int vb2_set_plane_payload (TYPE_3__*,int ,size_t) ;
 int wake_up (int *) ;

void vsp1_histogram_buffer_complete(struct vsp1_histogram *histo,
        struct vsp1_histogram_buffer *buf,
        size_t size)
{
 struct vsp1_pipeline *pipe = histo->entity.pipe;
 unsigned long flags;






 buf->buf.sequence = pipe->sequence;
 buf->buf.vb2_buf.timestamp = ktime_get_ns();
 vb2_set_plane_payload(&buf->buf.vb2_buf, 0, size);
 vb2_buffer_done(&buf->buf.vb2_buf, VB2_BUF_STATE_DONE);

 spin_lock_irqsave(&histo->irqlock, flags);
 histo->readout = 0;
 wake_up(&histo->wait_queue);
 spin_unlock_irqrestore(&histo->irqlock, flags);
}

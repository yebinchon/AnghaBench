
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int timestamp; } ;
struct TYPE_6__ {TYPE_3__ vb2_buf; scalar_t__ sequence; int field; } ;
struct xvip_dma_buffer {TYPE_2__ buf; int queue; struct xvip_dma* dma; } ;
struct TYPE_5__ {int sizeimage; } ;
struct xvip_dma {TYPE_1__ format; int sequence; int queued_lock; } ;


 int V4L2_FIELD_NONE ;
 int VB2_BUF_STATE_DONE ;
 int ktime_get_ns () ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vb2_buffer_done (TYPE_3__*,int ) ;
 int vb2_set_plane_payload (TYPE_3__*,int ,int ) ;

__attribute__((used)) static void xvip_dma_complete(void *param)
{
 struct xvip_dma_buffer *buf = param;
 struct xvip_dma *dma = buf->dma;

 spin_lock(&dma->queued_lock);
 list_del(&buf->queue);
 spin_unlock(&dma->queued_lock);

 buf->buf.field = V4L2_FIELD_NONE;
 buf->buf.sequence = dma->sequence++;
 buf->buf.vb2_buf.timestamp = ktime_get_ns();
 vb2_set_plane_payload(&buf->buf.vb2_buf, 0, dma->format.sizeimage);
 vb2_buffer_done(&buf->buf.vb2_buf, VB2_BUF_STATE_DONE);
}

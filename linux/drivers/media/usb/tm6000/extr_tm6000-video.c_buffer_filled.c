
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tm6000_dmaqueue {int dummy; } ;
struct tm6000_core {int dummy; } ;
struct TYPE_2__ {int done; int queue; int ts; int field_count; int state; int i; } ;
struct tm6000_buffer {TYPE_1__ vb; } ;


 int V4L2_DEBUG_ISOC ;
 int VIDEOBUF_DONE ;
 int dprintk (struct tm6000_core*,int ,char*,struct tm6000_buffer*,int ) ;
 int ktime_get_ns () ;
 int list_del (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void buffer_filled(struct tm6000_core *dev,
     struct tm6000_dmaqueue *dma_q,
     struct tm6000_buffer *buf)
{

 dprintk(dev, V4L2_DEBUG_ISOC, "[%p/%d] wakeup\n", buf, buf->vb.i);
 buf->vb.state = VIDEOBUF_DONE;
 buf->vb.field_count++;
 buf->vb.ts = ktime_get_ns();

 list_del(&buf->vb.queue);
 wake_up(&buf->vb.done);
}

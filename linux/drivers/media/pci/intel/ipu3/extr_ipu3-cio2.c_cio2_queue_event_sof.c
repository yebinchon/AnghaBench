
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int frame_sequence; } ;
struct TYPE_5__ {TYPE_1__ frame_sync; } ;
struct v4l2_event {TYPE_2__ u; int type; } ;
struct TYPE_6__ {int devnode; } ;
struct cio2_queue {TYPE_3__ subdev; int frame_sequence; } ;
struct cio2_device {int dummy; } ;


 int V4L2_EVENT_FRAME_SYNC ;
 int atomic_read (int *) ;
 int v4l2_event_queue (int ,struct v4l2_event*) ;

__attribute__((used)) static void cio2_queue_event_sof(struct cio2_device *cio2, struct cio2_queue *q)
{





 struct v4l2_event event = {
  .type = V4L2_EVENT_FRAME_SYNC,
  .u.frame_sync.frame_sequence = atomic_read(&q->frame_sequence),
 };

 v4l2_event_queue(q->subdev.devnode, &event);
}

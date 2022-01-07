
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct v4l2_event {int type; TYPE_2__ u; } ;
struct omap3isp_stat_event_status {int buf_err; int config_counter; int frame_number; } ;
struct TYPE_3__ {struct video_device* devnode; } ;
struct ispstat {int event_type; int config_counter; int frame_number; TYPE_1__ subdev; } ;
typedef int event ;


 int memset (struct v4l2_event*,int ,int) ;
 int v4l2_event_queue (struct video_device*,struct v4l2_event*) ;

__attribute__((used)) static void isp_stat_queue_event(struct ispstat *stat, int err)
{
 struct video_device *vdev = stat->subdev.devnode;
 struct v4l2_event event;
 struct omap3isp_stat_event_status *status = (void *)event.u.data;

 memset(&event, 0, sizeof(event));
 if (!err) {
  status->frame_number = stat->frame_number;
  status->config_counter = stat->config_counter;
 } else {
  status->buf_err = 1;
 }
 event.type = stat->event_type;
 v4l2_event_queue(vdev, &event);
}

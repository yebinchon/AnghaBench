
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct TYPE_4__ {int frame_sequence; } ;
struct TYPE_5__ {TYPE_1__ frame_sync; } ;
struct v4l2_event {TYPE_2__ u; int type; } ;
struct isp_pipeline {int frame_number; } ;
struct TYPE_6__ {struct video_device* devnode; int entity; } ;
struct isp_ccdc_device {TYPE_3__ subdev; } ;
typedef int event ;


 int V4L2_EVENT_FRAME_SYNC ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int memset (struct v4l2_event*,int ,int) ;
 struct isp_pipeline* to_isp_pipeline (int *) ;
 int v4l2_event_queue (struct video_device*,struct v4l2_event*) ;

__attribute__((used)) static void ccdc_hs_vs_isr(struct isp_ccdc_device *ccdc)
{
 struct isp_pipeline *pipe = to_isp_pipeline(&ccdc->subdev.entity);
 struct video_device *vdev = ccdc->subdev.devnode;
 struct v4l2_event event;


 atomic_inc(&pipe->frame_number);

 memset(&event, 0, sizeof(event));
 event.type = V4L2_EVENT_FRAME_SYNC;
 event.u.frame_sync.frame_sequence = atomic_read(&pipe->frame_number);

 v4l2_event_queue(vdev, &event);
}

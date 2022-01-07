
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_async_notifier {int dummy; } ;
struct TYPE_2__ {int * ctrl_handler; } ;
struct mcam_camera {int ctrl_handler; TYPE_1__ v4l2_dev; } ;


 struct mcam_camera* notifier_to_mcam (struct v4l2_async_notifier*) ;
 int v4l2_ctrl_handler_init (int *,int) ;

__attribute__((used)) static int mccic_notify_complete(struct v4l2_async_notifier *notifier)
{
 struct mcam_camera *cam = notifier_to_mcam(notifier);
 int ret;




 ret = v4l2_ctrl_handler_init(&cam->ctrl_handler, 10);
 if (!ret)
  cam->v4l2_dev.ctrl_handler = &cam->ctrl_handler;

 return ret;
}

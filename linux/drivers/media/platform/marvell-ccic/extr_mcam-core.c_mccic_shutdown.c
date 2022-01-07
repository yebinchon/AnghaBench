
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fh_list; } ;
struct mcam_camera {scalar_t__ buffer_mode; int v4l2_dev; int notifier; int ctrl_handler; TYPE_1__ vdev; } ;


 scalar_t__ B_vmalloc ;
 int cam_warn (struct mcam_camera*,char*) ;
 int core ;
 int list_empty (int *) ;
 int mcam_free_dma_bufs (struct mcam_camera*) ;
 int s_power ;
 int sensor_call (struct mcam_camera*,int ,int ,int ) ;
 int v4l2_async_notifier_unregister (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister (int *) ;

void mccic_shutdown(struct mcam_camera *cam)
{






 if (!list_empty(&cam->vdev.fh_list)) {
  cam_warn(cam, "Removing a device with users!\n");
  sensor_call(cam, core, s_power, 0);
 }
 if (cam->buffer_mode == B_vmalloc)
  mcam_free_dma_bufs(cam);
 v4l2_ctrl_handler_free(&cam->ctrl_handler);
 v4l2_async_notifier_unregister(&cam->notifier);
 v4l2_device_unregister(&cam->v4l2_dev);
}

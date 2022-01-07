
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct viafb_dev {TYPE_2__* pdev; } ;
struct via_camera {int ctrl_handler; int v4l2_dev; int vdev; } ;
struct TYPE_3__ {struct viafb_dev* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int irq; } ;


 int free_irq (int ,struct via_camera*) ;
 int kfree (struct via_camera*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister (int *) ;
 struct via_camera* via_cam_info ;
 int via_sensor_power_release (struct via_camera*) ;
 int viacam_pm_hooks ;
 int viafb_pm_unregister (int *) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int viacam_remove(struct platform_device *pdev)
{
 struct via_camera *cam = via_cam_info;
 struct viafb_dev *viadev = pdev->dev.platform_data;

 video_unregister_device(&cam->vdev);
 v4l2_device_unregister(&cam->v4l2_dev);



 free_irq(viadev->pdev->irq, cam);
 via_sensor_power_release(cam);
 v4l2_ctrl_handler_free(&cam->ctrl_handler);
 kfree(cam);
 via_cam_info = ((void*)0);
 return 0;
}

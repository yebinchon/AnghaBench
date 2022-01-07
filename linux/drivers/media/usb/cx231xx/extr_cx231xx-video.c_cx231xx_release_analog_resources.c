
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ has_417; } ;
struct cx231xx {int radio_ctrl_handler; int ctrl_handler; int vdev; TYPE_1__ board; int dev; int vbi_dev; int radio_dev; } ;


 int cx231xx_417_unregister (struct cx231xx*) ;
 int dev_info (int ,char*,int ) ;
 int v4l2_ctrl_handler_free (int *) ;
 int video_device_node_name (int *) ;
 scalar_t__ video_is_registered (int *) ;
 int video_unregister_device (int *) ;

void cx231xx_release_analog_resources(struct cx231xx *dev)
{



 if (video_is_registered(&dev->radio_dev))
  video_unregister_device(&dev->radio_dev);
 if (video_is_registered(&dev->vbi_dev)) {
  dev_info(dev->dev, "V4L2 device %s deregistered\n",
   video_device_node_name(&dev->vbi_dev));
  video_unregister_device(&dev->vbi_dev);
 }
 if (video_is_registered(&dev->vdev)) {
  dev_info(dev->dev, "V4L2 device %s deregistered\n",
   video_device_node_name(&dev->vdev));

  if (dev->board.has_417)
   cx231xx_417_unregister(dev);

  video_unregister_device(&dev->vdev);
 }
 v4l2_ctrl_handler_free(&dev->ctrl_handler);
 v4l2_ctrl_handler_free(&dev->radio_ctrl_handler);
}

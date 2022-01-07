
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hw_revision; int model; int dev; } ;
struct TYPE_4__ {TYPE_2__* mdev; } ;
struct xvip_composite_device {TYPE_2__ media_dev; int dev; TYPE_1__ v4l2_dev; } ;


 int dev_err (int ,char*,int) ;
 int media_device_cleanup (TYPE_2__*) ;
 int media_device_init (TYPE_2__*) ;
 int strscpy (int ,char*,int) ;
 int v4l2_device_register (int ,TYPE_1__*) ;

__attribute__((used)) static int xvip_composite_v4l2_init(struct xvip_composite_device *xdev)
{
 int ret;

 xdev->media_dev.dev = xdev->dev;
 strscpy(xdev->media_dev.model, "Xilinx Video Composite Device",
  sizeof(xdev->media_dev.model));
 xdev->media_dev.hw_revision = 0;

 media_device_init(&xdev->media_dev);

 xdev->v4l2_dev.mdev = &xdev->media_dev;
 ret = v4l2_device_register(xdev->dev, &xdev->v4l2_dev);
 if (ret < 0) {
  dev_err(xdev->dev, "V4L2 device registration failed (%d)\n",
   ret);
  media_device_cleanup(&xdev->media_dev);
  return ret;
 }

 return 0;
}

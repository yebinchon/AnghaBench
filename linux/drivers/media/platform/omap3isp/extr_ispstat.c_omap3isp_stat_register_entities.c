
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_device {TYPE_1__* mdev; } ;
struct TYPE_4__ {int dev; } ;
struct ispstat {TYPE_2__ subdev; } ;
struct TYPE_3__ {int dev; } ;


 int v4l2_device_register_subdev (struct v4l2_device*,TYPE_2__*) ;

int omap3isp_stat_register_entities(struct ispstat *stat,
        struct v4l2_device *vdev)
{
 stat->subdev.dev = vdev->mdev->dev;

 return v4l2_device_register_subdev(vdev, &stat->subdev);
}

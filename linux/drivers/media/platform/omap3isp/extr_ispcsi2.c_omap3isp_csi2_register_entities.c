
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_device {TYPE_1__* mdev; } ;
struct TYPE_4__ {int dev; } ;
struct isp_csi2_device {int video_out; TYPE_2__ subdev; } ;
struct TYPE_3__ {int dev; } ;


 int omap3isp_csi2_unregister_entities (struct isp_csi2_device*) ;
 int omap3isp_video_register (int *,struct v4l2_device*) ;
 int v4l2_device_register_subdev (struct v4l2_device*,TYPE_2__*) ;

int omap3isp_csi2_register_entities(struct isp_csi2_device *csi2,
        struct v4l2_device *vdev)
{
 int ret;


 csi2->subdev.dev = vdev->mdev->dev;
 ret = v4l2_device_register_subdev(vdev, &csi2->subdev);
 if (ret < 0)
  goto error;

 ret = omap3isp_video_register(&csi2->video_out, vdev);
 if (ret < 0)
  goto error;

 return 0;

error:
 omap3isp_csi2_unregister_entities(csi2);
 return ret;
}

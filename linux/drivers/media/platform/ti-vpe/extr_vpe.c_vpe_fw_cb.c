
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct video_device {int num; TYPE_1__* v4l2_dev; int * lock; } ;
struct vpe_dev {TYPE_1__ v4l2_dev; int m2m_dev; int dev_mutex; struct video_device vfd; } ;
struct platform_device {int dev; } ;


 int VFL_TYPE_GRABBER ;
 int dev_info (int ,char*,int ) ;
 struct vpe_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int v4l2_device_unregister (TYPE_1__*) ;
 int v4l2_m2m_release (int ) ;
 int video_register_device (struct video_device*,int ,int ) ;
 int video_set_drvdata (struct video_device*,struct vpe_dev*) ;
 int vpe_err (struct vpe_dev*,char*) ;
 int vpe_runtime_put (struct platform_device*) ;
 int vpe_set_clock_enable (struct vpe_dev*,int ) ;
 struct video_device vpe_videodev ;

__attribute__((used)) static void vpe_fw_cb(struct platform_device *pdev)
{
 struct vpe_dev *dev = platform_get_drvdata(pdev);
 struct video_device *vfd;
 int ret;

 vfd = &dev->vfd;
 *vfd = vpe_videodev;
 vfd->lock = &dev->dev_mutex;
 vfd->v4l2_dev = &dev->v4l2_dev;

 ret = video_register_device(vfd, VFL_TYPE_GRABBER, 0);
 if (ret) {
  vpe_err(dev, "Failed to register video device\n");

  vpe_set_clock_enable(dev, 0);
  vpe_runtime_put(pdev);
  pm_runtime_disable(&pdev->dev);
  v4l2_m2m_release(dev->m2m_dev);
  v4l2_device_unregister(&dev->v4l2_dev);

  return;
 }

 video_set_drvdata(vfd, dev);
 dev_info(dev->v4l2_dev.dev, "Device registered as /dev/video%d\n",
  vfd->num);
}

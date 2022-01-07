
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int device_caps; int * v4l2_dev; int vfl_dir; int * ioctl_ops; int * fops; int (* release ) (struct video_device*) ;int name; } ;
struct venus_core {struct device* dev_dec; struct video_device* vdev_dec; int v4l2_dev; void* core0_bus_clk; void* core0_clk; } ;
struct device {int parent; } ;
struct platform_device {struct device dev; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 scalar_t__ IS_ERR (void*) ;
 scalar_t__ IS_V3 (struct venus_core*) ;
 scalar_t__ IS_V4 (struct venus_core*) ;
 int PTR_ERR (void*) ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_M2M_MPLANE ;
 int VFL_DIR_M2M ;
 int VFL_TYPE_GRABBER ;
 struct venus_core* dev_get_drvdata (int ) ;
 void* devm_clk_get (struct device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct venus_core*) ;
 int pm_runtime_enable (struct device*) ;
 int strscpy (int ,char*,int) ;
 int vdec_fops ;
 int vdec_ioctl_ops ;
 struct video_device* video_device_alloc () ;
 int video_device_release (struct video_device*) ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct venus_core*) ;

__attribute__((used)) static int vdec_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct video_device *vdev;
 struct venus_core *core;
 int ret;

 if (!dev->parent)
  return -EPROBE_DEFER;

 core = dev_get_drvdata(dev->parent);
 if (!core)
  return -EPROBE_DEFER;

 if (IS_V3(core) || IS_V4(core)) {
  core->core0_clk = devm_clk_get(dev, "core");
  if (IS_ERR(core->core0_clk))
   return PTR_ERR(core->core0_clk);
 }

 if (IS_V4(core)) {
  core->core0_bus_clk = devm_clk_get(dev, "bus");
  if (IS_ERR(core->core0_bus_clk))
   return PTR_ERR(core->core0_bus_clk);
 }

 platform_set_drvdata(pdev, core);

 vdev = video_device_alloc();
 if (!vdev)
  return -ENOMEM;

 strscpy(vdev->name, "qcom-venus-decoder", sizeof(vdev->name));
 vdev->release = video_device_release;
 vdev->fops = &vdec_fops;
 vdev->ioctl_ops = &vdec_ioctl_ops;
 vdev->vfl_dir = VFL_DIR_M2M;
 vdev->v4l2_dev = &core->v4l2_dev;
 vdev->device_caps = V4L2_CAP_VIDEO_M2M_MPLANE | V4L2_CAP_STREAMING;

 ret = video_register_device(vdev, VFL_TYPE_GRABBER, -1);
 if (ret)
  goto err_vdev_release;

 core->vdev_dec = vdev;
 core->dev_dec = dev;

 video_set_drvdata(vdev, core);
 pm_runtime_enable(dev);

 return 0;

err_vdev_release:
 video_device_release(vdev);
 return ret;
}

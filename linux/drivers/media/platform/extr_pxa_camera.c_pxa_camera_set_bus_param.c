
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_mbus_config {unsigned long flags; int type; } ;
struct pxa_camera_dev {int channels; int platform_flags; TYPE_2__* current_fmt; } ;
struct TYPE_4__ {TYPE_1__* host_fmt; } ;
struct TYPE_3__ {int bits_per_sample; int fourcc; } ;


 int EINVAL ;
 int ENOIOCTLCMD ;
 int PXA_CAMERA_HSP ;
 int PXA_CAMERA_PCP ;
 int PXA_CAMERA_VSP ;
 unsigned long V4L2_MBUS_HSYNC_ACTIVE_HIGH ;
 unsigned long V4L2_MBUS_HSYNC_ACTIVE_LOW ;
 int V4L2_MBUS_PARALLEL ;
 unsigned long V4L2_MBUS_PCLK_SAMPLE_FALLING ;
 unsigned long V4L2_MBUS_PCLK_SAMPLE_RISING ;
 unsigned long V4L2_MBUS_VSYNC_ACTIVE_HIGH ;
 unsigned long V4L2_MBUS_VSYNC_ACTIVE_LOW ;
 int dev_dbg (int ,char*,unsigned long,int) ;
 int dev_warn (int ,char*,unsigned long,unsigned long) ;
 int g_mbus_config ;
 int pcdev_to_dev (struct pxa_camera_dev*) ;
 int pxa_camera_setup_cicr (struct pxa_camera_dev*,unsigned long,int ) ;
 unsigned long pxa_mbus_config_compatible (struct v4l2_mbus_config*,unsigned long) ;
 int s_mbus_config ;
 int sensor_call (struct pxa_camera_dev*,int ,int ,struct v4l2_mbus_config*) ;
 int test_platform_param (struct pxa_camera_dev*,int ,unsigned long*) ;
 int video ;

__attribute__((used)) static int pxa_camera_set_bus_param(struct pxa_camera_dev *pcdev)
{
 struct v4l2_mbus_config cfg = {.type = V4L2_MBUS_PARALLEL,};
 u32 pixfmt = pcdev->current_fmt->host_fmt->fourcc;
 unsigned long bus_flags, common_flags;
 int ret;

 ret = test_platform_param(pcdev,
      pcdev->current_fmt->host_fmt->bits_per_sample,
      &bus_flags);
 if (ret < 0)
  return ret;

 ret = sensor_call(pcdev, video, g_mbus_config, &cfg);
 if (!ret) {
  common_flags = pxa_mbus_config_compatible(&cfg,
         bus_flags);
  if (!common_flags) {
   dev_warn(pcdev_to_dev(pcdev),
     "Flags incompatible: camera 0x%x, host 0x%lx\n",
     cfg.flags, bus_flags);
   return -EINVAL;
  }
 } else if (ret != -ENOIOCTLCMD) {
  return ret;
 } else {
  common_flags = bus_flags;
 }

 pcdev->channels = 1;


 if ((common_flags & V4L2_MBUS_HSYNC_ACTIVE_HIGH) &&
     (common_flags & V4L2_MBUS_HSYNC_ACTIVE_LOW)) {
  if (pcdev->platform_flags & PXA_CAMERA_HSP)
   common_flags &= ~V4L2_MBUS_HSYNC_ACTIVE_HIGH;
  else
   common_flags &= ~V4L2_MBUS_HSYNC_ACTIVE_LOW;
 }

 if ((common_flags & V4L2_MBUS_VSYNC_ACTIVE_HIGH) &&
     (common_flags & V4L2_MBUS_VSYNC_ACTIVE_LOW)) {
  if (pcdev->platform_flags & PXA_CAMERA_VSP)
   common_flags &= ~V4L2_MBUS_VSYNC_ACTIVE_HIGH;
  else
   common_flags &= ~V4L2_MBUS_VSYNC_ACTIVE_LOW;
 }

 if ((common_flags & V4L2_MBUS_PCLK_SAMPLE_RISING) &&
     (common_flags & V4L2_MBUS_PCLK_SAMPLE_FALLING)) {
  if (pcdev->platform_flags & PXA_CAMERA_PCP)
   common_flags &= ~V4L2_MBUS_PCLK_SAMPLE_RISING;
  else
   common_flags &= ~V4L2_MBUS_PCLK_SAMPLE_FALLING;
 }

 cfg.flags = common_flags;
 ret = sensor_call(pcdev, video, s_mbus_config, &cfg);
 if (ret < 0 && ret != -ENOIOCTLCMD) {
  dev_dbg(pcdev_to_dev(pcdev),
   "camera s_mbus_config(0x%lx) returned %d\n",
   common_flags, ret);
  return ret;
 }

 pxa_camera_setup_cicr(pcdev, common_flags, pixfmt);

 return 0;
}

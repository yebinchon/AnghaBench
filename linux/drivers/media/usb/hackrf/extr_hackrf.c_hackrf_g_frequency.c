
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {scalar_t__ vfl_dir; } ;
struct v4l2_frequency {int tuner; int frequency; int type; } ;
struct usb_interface {int dev; } ;
struct hackrf_dev {int f_tx; int f_rx; int f_dac; int f_adc; int dev; struct usb_interface* intf; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_TUNER_RF ;
 int V4L2_TUNER_SDR ;
 scalar_t__ VFL_DIR_RX ;
 int dev_dbg (int *,char*,int,...) ;
 struct video_device* video_devdata (struct file*) ;
 struct hackrf_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int hackrf_g_frequency(struct file *file, void *priv,
  struct v4l2_frequency *f)
{
 struct hackrf_dev *dev = video_drvdata(file);
 struct usb_interface *intf = dev->intf;
 struct video_device *vdev = video_devdata(file);
 int ret;

 dev_dbg(dev->dev, "tuner=%d type=%d\n", f->tuner, f->type);

 if (f->tuner == 0) {
  f->type = V4L2_TUNER_SDR;
  if (vdev->vfl_dir == VFL_DIR_RX)
   f->frequency = dev->f_adc;
  else
   f->frequency = dev->f_dac;
 } else if (f->tuner == 1) {
  f->type = V4L2_TUNER_RF;
  if (vdev->vfl_dir == VFL_DIR_RX)
   f->frequency = dev->f_rx;
  else
   f->frequency = dev->f_tx;
 } else {
  ret = -EINVAL;
  goto err;
 }

 return 0;
err:
 dev_dbg(&intf->dev, "failed=%d\n", ret);
 return ret;
}

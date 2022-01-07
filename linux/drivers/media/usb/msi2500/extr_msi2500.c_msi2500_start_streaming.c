
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct msi2500_dev {int v4l2_lock; int v4l2_subdev; int udev; int dev; } ;


 int CMD_START_STREAMING ;
 int ENODEV ;
 int ERESTARTSYS ;
 int core ;
 int dev_dbg (int ,char*) ;
 int msi2500_cleanup_queued_bufs (struct msi2500_dev*) ;
 int msi2500_ctrl_msg (struct msi2500_dev*,int ,int ) ;
 int msi2500_isoc_init (struct msi2500_dev*) ;
 int msi2500_set_usb_adc (struct msi2500_dev*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int s_power ;
 int v4l2_subdev_call (int ,int ,int ,int) ;
 struct msi2500_dev* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int msi2500_start_streaming(struct vb2_queue *vq, unsigned int count)
{
 struct msi2500_dev *dev = vb2_get_drv_priv(vq);
 int ret;

 dev_dbg(dev->dev, "\n");

 if (!dev->udev)
  return -ENODEV;

 if (mutex_lock_interruptible(&dev->v4l2_lock))
  return -ERESTARTSYS;


 v4l2_subdev_call(dev->v4l2_subdev, core, s_power, 1);

 ret = msi2500_set_usb_adc(dev);

 ret = msi2500_isoc_init(dev);
 if (ret)
  msi2500_cleanup_queued_bufs(dev);

 ret = msi2500_ctrl_msg(dev, CMD_START_STREAMING, 0);

 mutex_unlock(&dev->v4l2_lock);

 return ret;
}

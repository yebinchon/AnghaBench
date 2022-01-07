
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct msi2500_dev {int v4l2_lock; int v4l2_subdev; scalar_t__ udev; int dev; } ;


 int CMD_STOP_STREAMING ;
 int CMD_WREG ;
 int core ;
 int dev_dbg (int ,char*) ;
 int msi2500_cleanup_queued_bufs (struct msi2500_dev*) ;
 int msi2500_ctrl_msg (struct msi2500_dev*,int ,int) ;
 int msi2500_isoc_cleanup (struct msi2500_dev*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int s_power ;
 int v4l2_subdev_call (int ,int ,int ,int ) ;
 struct msi2500_dev* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void msi2500_stop_streaming(struct vb2_queue *vq)
{
 struct msi2500_dev *dev = vb2_get_drv_priv(vq);

 dev_dbg(dev->dev, "\n");

 mutex_lock(&dev->v4l2_lock);

 if (dev->udev)
  msi2500_isoc_cleanup(dev);

 msi2500_cleanup_queued_bufs(dev);


 msleep(20);
 if (!msi2500_ctrl_msg(dev, CMD_STOP_STREAMING, 0)) {

  msi2500_ctrl_msg(dev, CMD_WREG, 0x01000003);
 }


 v4l2_subdev_call(dev->v4l2_subdev, core, s_power, 0);

 mutex_unlock(&dev->v4l2_lock);
}

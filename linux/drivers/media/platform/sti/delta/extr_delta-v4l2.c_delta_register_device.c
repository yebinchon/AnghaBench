
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int device_caps; int name; int * v4l2_dev; int vfl_dir; int * lock; int (* release ) (struct video_device*) ;int * ioctl_ops; int * fops; } ;
struct delta_dev {int m2m_dev; struct video_device* vdev; int dev; int v4l2_dev; int lock; } ;


 char* DELTA_FW_VERSION ;
 char* DELTA_NAME ;
 int DELTA_PREFIX ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_M2M ;
 int VFL_DIR_M2M ;
 int VFL_TYPE_GRABBER ;
 int delta_fops ;
 int delta_ioctl_ops ;
 int delta_m2m_ops ;
 int dev_err (int ,char*,int ) ;
 int snprintf (int ,int,char*,char*,char*) ;
 int v4l2_m2m_init (int *) ;
 int v4l2_m2m_release (int ) ;
 struct video_device* video_device_alloc () ;
 int video_device_release (struct video_device*) ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct delta_dev*) ;

__attribute__((used)) static int delta_register_device(struct delta_dev *delta)
{
 int ret;
 struct video_device *vdev;

 if (!delta)
  return -ENODEV;

 delta->m2m_dev = v4l2_m2m_init(&delta_m2m_ops);
 if (IS_ERR(delta->m2m_dev)) {
  dev_err(delta->dev, "%s failed to initialize v4l2-m2m device\n",
   DELTA_PREFIX);
  ret = PTR_ERR(delta->m2m_dev);
  goto err;
 }

 vdev = video_device_alloc();
 if (!vdev) {
  dev_err(delta->dev, "%s failed to allocate video device\n",
   DELTA_PREFIX);
  ret = -ENOMEM;
  goto err_m2m_release;
 }

 vdev->fops = &delta_fops;
 vdev->ioctl_ops = &delta_ioctl_ops;
 vdev->release = video_device_release;
 vdev->lock = &delta->lock;
 vdev->vfl_dir = VFL_DIR_M2M;
 vdev->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_M2M;
 vdev->v4l2_dev = &delta->v4l2_dev;
 snprintf(vdev->name, sizeof(vdev->name), "%s-%s",
   DELTA_NAME, DELTA_FW_VERSION);

 ret = video_register_device(vdev, VFL_TYPE_GRABBER, -1);
 if (ret) {
  dev_err(delta->dev, "%s failed to register video device\n",
   DELTA_PREFIX);
  goto err_vdev_release;
 }

 delta->vdev = vdev;
 video_set_drvdata(vdev, delta);
 return 0;

err_vdev_release:
 video_device_release(vdev);
err_m2m_release:
 v4l2_m2m_release(delta->m2m_dev);
err:
 return ret;
}

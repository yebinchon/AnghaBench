
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int device_caps; int name; int * v4l2_dev; int vfl_dir; int * lock; int (* release ) (struct video_device*) ;int * ioctl_ops; int * fops; } ;
struct hva_dev {int m2m_dev; struct video_device* vdev; int ip_version; int v4l2_dev; int lock; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 char* HVA_NAME ;
 int HVA_PREFIX ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_M2M ;
 int VFL_DIR_M2M ;
 int VFL_TYPE_GRABBER ;
 int dev_err (struct device*,char*,int ) ;
 int hva_fops ;
 int hva_ioctl_ops ;
 int hva_m2m_ops ;
 struct device* hva_to_dev (struct hva_dev*) ;
 int snprintf (int ,int,char*,char*,int ) ;
 int v4l2_m2m_init (int *) ;
 int v4l2_m2m_release (int ) ;
 struct video_device* video_device_alloc () ;
 int video_device_release (struct video_device*) ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct hva_dev*) ;

__attribute__((used)) static int hva_register_device(struct hva_dev *hva)
{
 int ret;
 struct video_device *vdev;
 struct device *dev;

 if (!hva)
  return -ENODEV;
 dev = hva_to_dev(hva);

 hva->m2m_dev = v4l2_m2m_init(&hva_m2m_ops);
 if (IS_ERR(hva->m2m_dev)) {
  dev_err(dev, "%s failed to initialize v4l2-m2m device\n",
   HVA_PREFIX);
  ret = PTR_ERR(hva->m2m_dev);
  goto err;
 }

 vdev = video_device_alloc();
 if (!vdev) {
  dev_err(dev, "%s failed to allocate video device\n",
   HVA_PREFIX);
  ret = -ENOMEM;
  goto err_m2m_release;
 }

 vdev->fops = &hva_fops;
 vdev->ioctl_ops = &hva_ioctl_ops;
 vdev->release = video_device_release;
 vdev->lock = &hva->lock;
 vdev->vfl_dir = VFL_DIR_M2M;
 vdev->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_M2M;
 vdev->v4l2_dev = &hva->v4l2_dev;
 snprintf(vdev->name, sizeof(vdev->name), "%s%lx", HVA_NAME,
   hva->ip_version);

 ret = video_register_device(vdev, VFL_TYPE_GRABBER, -1);
 if (ret) {
  dev_err(dev, "%s failed to register video device\n",
   HVA_PREFIX);
  goto err_vdev_release;
 }

 hva->vdev = vdev;
 video_set_drvdata(vdev, hva);
 return 0;

err_vdev_release:
 video_device_release(vdev);
err_m2m_release:
 v4l2_m2m_release(hva->m2m_dev);
err:
 return ret;
}

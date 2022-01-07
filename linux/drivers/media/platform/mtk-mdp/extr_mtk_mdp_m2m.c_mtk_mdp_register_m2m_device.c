
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mtk_mdp_dev {TYPE_2__* vdev; int m2m_dev; int v4l2_dev; int lock; int * variant; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int device_caps; int num; int name; int * v4l2_dev; int vfl_dir; int * lock; int (* release ) (TYPE_2__*) ;int * ioctl_ops; int * fops; } ;
struct TYPE_6__ {struct device dev; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (int ) ;
 char* MTK_MDP_MODULE_NAME ;
 int PTR_ERR (int ) ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_M2M_MPLANE ;
 int VFL_DIR_M2M ;
 int VFL_TYPE_GRABBER ;
 int dev_err (struct device*,char*) ;
 int mtk_mdp_default_variant ;
 int mtk_mdp_m2m_fops ;
 int mtk_mdp_m2m_ioctl_ops ;
 int mtk_mdp_m2m_ops ;
 int snprintf (int ,int,char*,char*) ;
 int v4l2_info (int *,char*,int ) ;
 int v4l2_m2m_init (int *) ;
 int v4l2_m2m_release (int ) ;
 TYPE_2__* video_device_alloc () ;
 int video_device_release (TYPE_2__*) ;
 int video_register_device (TYPE_2__*,int ,int) ;
 int video_set_drvdata (TYPE_2__*,struct mtk_mdp_dev*) ;

int mtk_mdp_register_m2m_device(struct mtk_mdp_dev *mdp)
{
 struct device *dev = &mdp->pdev->dev;
 int ret;

 mdp->variant = &mtk_mdp_default_variant;
 mdp->vdev = video_device_alloc();
 if (!mdp->vdev) {
  dev_err(dev, "failed to allocate video device\n");
  ret = -ENOMEM;
  goto err_video_alloc;
 }
 mdp->vdev->device_caps = V4L2_CAP_VIDEO_M2M_MPLANE | V4L2_CAP_STREAMING;
 mdp->vdev->fops = &mtk_mdp_m2m_fops;
 mdp->vdev->ioctl_ops = &mtk_mdp_m2m_ioctl_ops;
 mdp->vdev->release = video_device_release;
 mdp->vdev->lock = &mdp->lock;
 mdp->vdev->vfl_dir = VFL_DIR_M2M;
 mdp->vdev->v4l2_dev = &mdp->v4l2_dev;
 snprintf(mdp->vdev->name, sizeof(mdp->vdev->name), "%s:m2m",
   MTK_MDP_MODULE_NAME);
 video_set_drvdata(mdp->vdev, mdp);

 mdp->m2m_dev = v4l2_m2m_init(&mtk_mdp_m2m_ops);
 if (IS_ERR(mdp->m2m_dev)) {
  dev_err(dev, "failed to initialize v4l2-m2m device\n");
  ret = PTR_ERR(mdp->m2m_dev);
  goto err_m2m_init;
 }

 ret = video_register_device(mdp->vdev, VFL_TYPE_GRABBER, 2);
 if (ret) {
  dev_err(dev, "failed to register video device\n");
  goto err_vdev_register;
 }

 v4l2_info(&mdp->v4l2_dev, "driver registered as /dev/video%d",
    mdp->vdev->num);
 return 0;

err_vdev_register:
 v4l2_m2m_release(mdp->m2m_dev);
err_m2m_init:
 video_device_release(mdp->vdev);
err_video_alloc:

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int device_caps; int vfl_dir; int * v4l2_dev; int * lock; int release; int * ioctl_ops; int * fops; int name; } ;
struct coda_dev {int v4l2_dev; int dev_mutex; TYPE_2__* devtype; struct video_device* vfd; } ;
typedef enum coda_inst_type { ____Placeholder_coda_inst_type } coda_inst_type ;
struct TYPE_4__ {int num_vdevs; TYPE_1__** vdevs; } ;
struct TYPE_3__ {int type; int name; } ;


 int CODA_INST_ENCODER ;
 int EINVAL ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_M2M ;
 int VFL_DIR_M2M ;
 int VFL_TYPE_GRABBER ;
 int VIDIOC_CROPCAP ;
 int VIDIOC_G_CROP ;
 int VIDIOC_S_CROP ;
 int coda_fops ;
 int coda_ioctl_ops ;
 int strscpy (int ,int ,int) ;
 int v4l2_disable_ioctl (struct video_device*,int ) ;
 int v4l2_info (int *,char*,char*,int ) ;
 int video_device_node_name (struct video_device*) ;
 int video_device_release_empty ;
 int video_register_device (struct video_device*,int ,int ) ;
 int video_set_drvdata (struct video_device*,struct coda_dev*) ;

__attribute__((used)) static int coda_register_device(struct coda_dev *dev, int i)
{
 struct video_device *vfd = &dev->vfd[i];
 enum coda_inst_type type;
 int ret;

 if (i >= dev->devtype->num_vdevs)
  return -EINVAL;
 type = dev->devtype->vdevs[i]->type;

 strscpy(vfd->name, dev->devtype->vdevs[i]->name, sizeof(vfd->name));
 vfd->fops = &coda_fops;
 vfd->ioctl_ops = &coda_ioctl_ops;
 vfd->release = video_device_release_empty,
 vfd->lock = &dev->dev_mutex;
 vfd->v4l2_dev = &dev->v4l2_dev;
 vfd->vfl_dir = VFL_DIR_M2M;
 vfd->device_caps = V4L2_CAP_VIDEO_M2M | V4L2_CAP_STREAMING;
 video_set_drvdata(vfd, dev);


 v4l2_disable_ioctl(vfd, VIDIOC_CROPCAP);
 v4l2_disable_ioctl(vfd, VIDIOC_G_CROP);
 v4l2_disable_ioctl(vfd, VIDIOC_S_CROP);

 ret = video_register_device(vfd, VFL_TYPE_GRABBER, 0);
 if (!ret)
  v4l2_info(&dev->v4l2_dev, "%s registered as %s\n",
     type == CODA_INST_ENCODER ? "encoder" : "decoder",
     video_device_node_name(vfd));
 return ret;
}

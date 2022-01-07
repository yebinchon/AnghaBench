
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int device_caps; int * ioctl_ops; int * fops; int * lock; int release; int name; int * queue; int * v4l2_dev; } ;
struct TYPE_4__ {int height; int width; int pixelformat; } ;
struct sun4i_csi {int dev; struct video_device vdev; int subdev_fmt; TYPE_2__ fmt; int lock; int queue; int v4l; } ;
struct TYPE_3__ {int fourcc; } ;


 int CSI_DEFAULT_HEIGHT ;
 int CSI_DEFAULT_WIDTH ;
 int KBUILD_MODNAME ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE_MPLANE ;
 int VFL_TYPE_GRABBER ;
 int _sun4i_csi_try_fmt (struct sun4i_csi*,TYPE_2__*) ;
 int dev_info (int ,char*,int ) ;
 int strscpy (int ,int ,int) ;
 int sun4i_csi_fops ;
 TYPE_1__* sun4i_csi_formats ;
 int sun4i_csi_ioctl_ops ;
 int sun4i_csi_pad_fmt_default ;
 int video_device_node_name (struct video_device*) ;
 int video_device_release_empty ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct sun4i_csi*) ;

int sun4i_csi_v4l2_register(struct sun4i_csi *csi)
{
 struct video_device *vdev = &csi->vdev;
 int ret;

 vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE_MPLANE | V4L2_CAP_STREAMING;
 vdev->v4l2_dev = &csi->v4l;
 vdev->queue = &csi->queue;
 strscpy(vdev->name, KBUILD_MODNAME, sizeof(vdev->name));
 vdev->release = video_device_release_empty;
 vdev->lock = &csi->lock;


 csi->fmt.pixelformat = sun4i_csi_formats[0].fourcc,
 csi->fmt.width = CSI_DEFAULT_WIDTH;
 csi->fmt.height = CSI_DEFAULT_HEIGHT;
 _sun4i_csi_try_fmt(csi, &csi->fmt);
 csi->subdev_fmt = sun4i_csi_pad_fmt_default;

 vdev->fops = &sun4i_csi_fops;
 vdev->ioctl_ops = &sun4i_csi_ioctl_ops;
 video_set_drvdata(vdev, csi);

 ret = video_register_device(&csi->vdev, VFL_TYPE_GRABBER, -1);
 if (ret)
  return ret;

 dev_info(csi->dev, "Device registered as %s\n",
   video_device_node_name(vdev));

 return 0;
}

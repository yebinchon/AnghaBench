
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct video_device {int device_caps; int * ioctl_ops; int * fops; int * lock; int release; int name; int * queue; TYPE_2__* v4l2_dev; } ;
struct TYPE_5__ {int notify; } ;
struct TYPE_6__ {int colorspace; int field; int height; int width; int pixelformat; } ;
struct rvin_dev {int id; struct video_device vdev; TYPE_2__ v4l2_dev; TYPE_3__ format; TYPE_1__* info; int lock; int queue; } ;
struct TYPE_4__ {scalar_t__ use_mc; } ;


 int RVIN_DEFAULT_COLORSPACE ;
 int RVIN_DEFAULT_FIELD ;
 int RVIN_DEFAULT_FORMAT ;
 int RVIN_DEFAULT_HEIGHT ;
 int RVIN_DEFAULT_WIDTH ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int VFL_TYPE_GRABBER ;
 int rvin_fops ;
 int rvin_format_align (struct rvin_dev*,TYPE_3__*) ;
 int rvin_ioctl_ops ;
 int rvin_mc_ioctl_ops ;
 int rvin_notify ;
 int rvin_reset_format (struct rvin_dev*) ;
 int snprintf (int ,int,char*,int) ;
 int v4l2_info (TYPE_2__*,char*,int ) ;
 int video_device_node_name (struct video_device*) ;
 int video_device_release_empty ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct rvin_dev*) ;
 int vin_err (struct rvin_dev*,char*) ;

int rvin_v4l2_register(struct rvin_dev *vin)
{
 struct video_device *vdev = &vin->vdev;
 int ret;

 vin->v4l2_dev.notify = rvin_notify;


 vdev->v4l2_dev = &vin->v4l2_dev;
 vdev->queue = &vin->queue;
 snprintf(vdev->name, sizeof(vdev->name), "VIN%u output", vin->id);
 vdev->release = video_device_release_empty;
 vdev->lock = &vin->lock;
 vdev->fops = &rvin_fops;
 vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING |
  V4L2_CAP_READWRITE;


 vin->format.pixelformat = RVIN_DEFAULT_FORMAT;
 vin->format.width = RVIN_DEFAULT_WIDTH;
 vin->format.height = RVIN_DEFAULT_HEIGHT;
 vin->format.field = RVIN_DEFAULT_FIELD;
 vin->format.colorspace = RVIN_DEFAULT_COLORSPACE;

 if (vin->info->use_mc) {
  vdev->ioctl_ops = &rvin_mc_ioctl_ops;
 } else {
  vdev->ioctl_ops = &rvin_ioctl_ops;
  rvin_reset_format(vin);
 }

 rvin_format_align(vin, &vin->format);

 ret = video_register_device(&vin->vdev, VFL_TYPE_GRABBER, -1);
 if (ret) {
  vin_err(vin, "Failed to register video device\n");
  return ret;
 }

 video_set_drvdata(&vin->vdev, vin);

 v4l2_info(&vin->v4l2_dev, "Device registered as %s\n",
    video_device_node_name(&vin->vdev));

 return ret;
}

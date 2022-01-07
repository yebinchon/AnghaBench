
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * lock; } ;
struct rcar_drif_sdr {int dev; TYPE_2__* vdev; int v4l2_dev; int ctrl_hdl; int vb_queue_mutex; TYPE_1__ vb_queue; int v4l2_mutex; } ;
struct TYPE_7__ {int device_caps; int * v4l2_dev; int * ctrl_handler; TYPE_1__* queue; int * lock; int (* release ) (TYPE_2__*) ;int * ioctl_ops; int * fops; int name; } ;


 int ENOMEM ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_SDR_CAPTURE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int VFL_TYPE_SDR ;
 int dev_err (int ,char*,int) ;
 int rcar_drif_fops ;
 int rcar_drif_ioctl_ops ;
 int snprintf (int ,int,char*) ;
 TYPE_2__* video_device_alloc () ;
 int video_device_release (TYPE_2__*) ;
 int video_register_device (TYPE_2__*,int ,int) ;
 int video_set_drvdata (TYPE_2__*,struct rcar_drif_sdr*) ;

__attribute__((used)) static int rcar_drif_sdr_register(struct rcar_drif_sdr *sdr)
{
 int ret;


 sdr->vdev = video_device_alloc();
 if (!sdr->vdev)
  return -ENOMEM;

 snprintf(sdr->vdev->name, sizeof(sdr->vdev->name), "R-Car DRIF");
 sdr->vdev->fops = &rcar_drif_fops;
 sdr->vdev->ioctl_ops = &rcar_drif_ioctl_ops;
 sdr->vdev->release = video_device_release;
 sdr->vdev->lock = &sdr->v4l2_mutex;
 sdr->vdev->queue = &sdr->vb_queue;
 sdr->vdev->queue->lock = &sdr->vb_queue_mutex;
 sdr->vdev->ctrl_handler = &sdr->ctrl_hdl;
 sdr->vdev->v4l2_dev = &sdr->v4l2_dev;
 sdr->vdev->device_caps = V4L2_CAP_SDR_CAPTURE | V4L2_CAP_TUNER |
  V4L2_CAP_STREAMING | V4L2_CAP_READWRITE;
 video_set_drvdata(sdr->vdev, sdr);


 ret = video_register_device(sdr->vdev, VFL_TYPE_SDR, -1);
 if (ret) {
  video_device_release(sdr->vdev);
  sdr->vdev = ((void*)0);
  dev_err(sdr->dev, "failed video_register_device (%d)\n", ret);
 }

 return ret;
}

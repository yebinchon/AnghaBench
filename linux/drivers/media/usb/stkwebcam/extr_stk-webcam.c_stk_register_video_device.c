
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int device_caps; int * v4l2_dev; int * lock; } ;
struct stk_camera {TYPE_1__ vdev; int v4l2_dev; int lock; } ;


 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int VFL_TYPE_GRABBER ;
 int pr_err (char*) ;
 int pr_info (char*,int ) ;
 TYPE_1__ stk_v4l_data ;
 int video_device_node_name (TYPE_1__*) ;
 int video_register_device (TYPE_1__*,int ,int) ;
 int video_set_drvdata (TYPE_1__*,struct stk_camera*) ;

__attribute__((used)) static int stk_register_video_device(struct stk_camera *dev)
{
 int err;

 dev->vdev = stk_v4l_data;
 dev->vdev.lock = &dev->lock;
 dev->vdev.v4l2_dev = &dev->v4l2_dev;
 dev->vdev.device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_READWRITE |
    V4L2_CAP_STREAMING;
 video_set_drvdata(&dev->vdev, dev);
 err = video_register_device(&dev->vdev, VFL_TYPE_GRABBER, -1);
 if (err)
  pr_err("v4l registration failed\n");
 else
  pr_info("Syntek USB2.0 Camera is now controlling device %s\n",
   video_device_node_name(&dev->vdev));
 return err;
}

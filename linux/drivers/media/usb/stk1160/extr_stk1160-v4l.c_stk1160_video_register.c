
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int device_caps; int * v4l2_dev; int * lock; int * queue; } ;
struct stk1160 {int width; int height; TYPE_1__ vdev; int v4l2_dev; int norm; int * fmt; int v4l_lock; int vb_vidq; } ;


 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_STD_NTSC_M ;
 int VFL_TYPE_GRABBER ;
 int * format ;
 int s_std ;
 int stk1160_err (char*,int) ;
 int stk1160_set_std (struct stk1160*) ;
 int v4l2_device_call_all (int *,int ,int ,int ,int ) ;
 int v4l2_info (int *,char*,int ) ;
 TYPE_1__ v4l_template ;
 int video ;
 int video_device_node_name (TYPE_1__*) ;
 int video_register_device (TYPE_1__*,int ,int) ;
 int video_set_drvdata (TYPE_1__*,struct stk1160*) ;

int stk1160_video_register(struct stk1160 *dev)
{
 int rc;


 dev->vdev = v4l_template;
 dev->vdev.queue = &dev->vb_vidq;





 dev->vdev.lock = &dev->v4l_lock;


 dev->vdev.v4l2_dev = &dev->v4l2_dev;
 dev->vdev.device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING |
    V4L2_CAP_READWRITE;


 dev->norm = V4L2_STD_NTSC_M;
 dev->width = 720;
 dev->height = 480;


 dev->fmt = &format[0];
 stk1160_set_std(dev);

 v4l2_device_call_all(&dev->v4l2_dev, 0, video, s_std,
   dev->norm);

 video_set_drvdata(&dev->vdev, dev);
 rc = video_register_device(&dev->vdev, VFL_TYPE_GRABBER, -1);
 if (rc < 0) {
  stk1160_err("video_register_device failed (%d)\n", rc);
  return rc;
 }

 v4l2_info(&dev->v4l2_dev, "V4L2 device registered as %s\n",
    video_device_node_name(&dev->vdev));

 return 0;
}

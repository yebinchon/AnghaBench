
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct usbtv_buf {int dummy; } ;
struct TYPE_11__ {int io_modes; int buf_struct_size; int * lock; int timestamp_flags; int * mem_ops; int * ops; struct usbtv* drv_priv; int type; } ;
struct TYPE_13__ {int error; } ;
struct TYPE_12__ {int release; TYPE_7__* ctrl_handler; } ;
struct TYPE_10__ {int device_caps; int * lock; TYPE_3__* queue; int tvnorms; int * ioctl_ops; int * fops; int release; TYPE_5__* v4l2_dev; int name; } ;
struct usbtv {TYPE_3__ vb2q; TYPE_7__ ctrl; TYPE_5__ v4l2_dev; int dev; TYPE_1__ vdev; int v4l2_lock; int vb2q_lock; int bufs; int buflock; } ;


 int INIT_LIST_HEAD (int *) ;
 int USBTV_TV_STD ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HUE ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_SHARPNESS ;
 int V4L2_STD_525_60 ;
 int VB2_MMAP ;
 int VB2_READ ;
 int VB2_USERPTR ;
 int VFL_TYPE_GRABBER ;
 int dev_warn (int ,char*) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int strscpy (int ,char*,int) ;
 int usbtv_configure_for_norm (struct usbtv*,int ) ;
 int usbtv_ctrl_ops ;
 int usbtv_fops ;
 int usbtv_ioctl_ops ;
 int usbtv_release ;
 int usbtv_vb2_ops ;
 int v4l2_ctrl_handler_free (TYPE_7__*) ;
 int v4l2_ctrl_handler_init (TYPE_7__*,int) ;
 int v4l2_ctrl_new_std (TYPE_7__*,int *,int ,int,int,int,int) ;
 int v4l2_device_register (int ,TYPE_5__*) ;
 int v4l2_device_unregister (TYPE_5__*) ;
 int vb2_queue_init (TYPE_3__*) ;
 int vb2_queue_release (TYPE_3__*) ;
 int vb2_vmalloc_memops ;
 int video_device_release_empty ;
 int video_register_device (TYPE_1__*,int ,int) ;
 int video_set_drvdata (TYPE_1__*,struct usbtv*) ;

int usbtv_video_init(struct usbtv *usbtv)
{
 int ret;

 (void)usbtv_configure_for_norm(usbtv, V4L2_STD_525_60);

 spin_lock_init(&usbtv->buflock);
 mutex_init(&usbtv->v4l2_lock);
 mutex_init(&usbtv->vb2q_lock);
 INIT_LIST_HEAD(&usbtv->bufs);


 usbtv->vb2q.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 usbtv->vb2q.io_modes = VB2_MMAP | VB2_USERPTR | VB2_READ;
 usbtv->vb2q.drv_priv = usbtv;
 usbtv->vb2q.buf_struct_size = sizeof(struct usbtv_buf);
 usbtv->vb2q.ops = &usbtv_vb2_ops;
 usbtv->vb2q.mem_ops = &vb2_vmalloc_memops;
 usbtv->vb2q.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 usbtv->vb2q.lock = &usbtv->vb2q_lock;
 ret = vb2_queue_init(&usbtv->vb2q);
 if (ret < 0) {
  dev_warn(usbtv->dev, "Could not initialize videobuf2 queue\n");
  return ret;
 }


 v4l2_ctrl_handler_init(&usbtv->ctrl, 4);
 v4l2_ctrl_new_std(&usbtv->ctrl, &usbtv_ctrl_ops,
   V4L2_CID_CONTRAST, 0, 0x3ff, 1, 0x1d0);
 v4l2_ctrl_new_std(&usbtv->ctrl, &usbtv_ctrl_ops,
   V4L2_CID_BRIGHTNESS, 0, 0x3ff, 1, 0x1c0);
 v4l2_ctrl_new_std(&usbtv->ctrl, &usbtv_ctrl_ops,
   V4L2_CID_SATURATION, 0, 0x3ff, 1, 0x200);
 v4l2_ctrl_new_std(&usbtv->ctrl, &usbtv_ctrl_ops,
   V4L2_CID_HUE, -0xdff, 0xdff, 1, 0x000);
 v4l2_ctrl_new_std(&usbtv->ctrl, &usbtv_ctrl_ops,
   V4L2_CID_SHARPNESS, 0x0, 0xff, 1, 0x60);
 ret = usbtv->ctrl.error;
 if (ret < 0) {
  dev_warn(usbtv->dev, "Could not initialize controls\n");
  goto ctrl_fail;
 }


 usbtv->v4l2_dev.ctrl_handler = &usbtv->ctrl;
 usbtv->v4l2_dev.release = usbtv_release;
 ret = v4l2_device_register(usbtv->dev, &usbtv->v4l2_dev);
 if (ret < 0) {
  dev_warn(usbtv->dev, "Could not register v4l2 device\n");
  goto v4l2_fail;
 }


 strscpy(usbtv->vdev.name, "usbtv", sizeof(usbtv->vdev.name));
 usbtv->vdev.v4l2_dev = &usbtv->v4l2_dev;
 usbtv->vdev.release = video_device_release_empty;
 usbtv->vdev.fops = &usbtv_fops;
 usbtv->vdev.ioctl_ops = &usbtv_ioctl_ops;
 usbtv->vdev.tvnorms = USBTV_TV_STD;
 usbtv->vdev.queue = &usbtv->vb2q;
 usbtv->vdev.lock = &usbtv->v4l2_lock;
 usbtv->vdev.device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_READWRITE |
      V4L2_CAP_STREAMING;
 video_set_drvdata(&usbtv->vdev, usbtv);
 ret = video_register_device(&usbtv->vdev, VFL_TYPE_GRABBER, -1);
 if (ret < 0) {
  dev_warn(usbtv->dev, "Could not register video device\n");
  goto vdev_fail;
 }

 return 0;

vdev_fail:
 v4l2_device_unregister(&usbtv->v4l2_dev);
v4l2_fail:
ctrl_fail:
 v4l2_ctrl_handler_free(&usbtv->ctrl);
 vb2_queue_release(&usbtv->vb2q);

 return ret;
}

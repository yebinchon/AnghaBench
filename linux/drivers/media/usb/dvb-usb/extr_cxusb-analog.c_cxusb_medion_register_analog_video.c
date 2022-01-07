
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct dvb_usb_device {TYPE_1__* udev; struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_vbuffer {int dummy; } ;
struct TYPE_10__ {int io_modes; int buf_struct_size; int min_buffers_needed; int * lock; int timestamp_flags; struct dvb_usb_device* drv_priv; int * mem_ops; int * ops; int type; } ;
struct cxusb_medion_dev {TYPE_6__ videoqueue; TYPE_2__* videodev; int dev_lock; int v4l2dev; } ;
struct TYPE_9__ {int * lock; int release; int tvnorms; int * ioctl_ops; int vfl_dir; int name; TYPE_6__* queue; int * v4l2_dev; int * fops; int device_caps; } ;
struct TYPE_8__ {int dev; } ;


 int ENOMEM ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_STD_ALL ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_READ ;
 int VB2_USERPTR ;
 int VFL_DIR_RX ;
 int VFL_TYPE_GRABBER ;
 int cxdev_video_qops ;
 int cxusb_medion_videodev_release ;
 int cxusb_video_fops ;
 int cxusb_video_ioctl ;
 int dev_err (int *,char*,...) ;
 int strscpy (int ,char*,int) ;
 int vb2_queue_init (TYPE_6__*) ;
 int vb2_queue_release (TYPE_6__*) ;
 int vb2_vmalloc_memops ;
 TYPE_2__* video_device_alloc () ;
 int video_device_release (TYPE_2__*) ;
 int video_register_device (TYPE_2__*,int ,int) ;
 int video_set_drvdata (TYPE_2__*,struct dvb_usb_device*) ;
 int videocaps ;

__attribute__((used)) static int cxusb_medion_register_analog_video(struct dvb_usb_device *dvbdev)
{
 struct cxusb_medion_dev *cxdev = dvbdev->priv;
 int ret;

 cxdev->videoqueue.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 cxdev->videoqueue.io_modes = VB2_MMAP | VB2_USERPTR | VB2_READ |
  VB2_DMABUF;
 cxdev->videoqueue.ops = &cxdev_video_qops;
 cxdev->videoqueue.mem_ops = &vb2_vmalloc_memops;
 cxdev->videoqueue.drv_priv = dvbdev;
 cxdev->videoqueue.buf_struct_size =
  sizeof(struct cxusb_medion_vbuffer);
 cxdev->videoqueue.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 cxdev->videoqueue.min_buffers_needed = 6;
 cxdev->videoqueue.lock = &cxdev->dev_lock;

 ret = vb2_queue_init(&cxdev->videoqueue);
 if (ret) {
  dev_err(&dvbdev->udev->dev,
   "video queue init failed, ret = %d\n", ret);
  return ret;
 }

 cxdev->videodev = video_device_alloc();
 if (!cxdev->videodev) {
  dev_err(&dvbdev->udev->dev, "video device alloc failed\n");
  ret = -ENOMEM;
  goto ret_qrelease;
 }

 cxdev->videodev->device_caps = videocaps;
 cxdev->videodev->fops = &cxusb_video_fops;
 cxdev->videodev->v4l2_dev = &cxdev->v4l2dev;
 cxdev->videodev->queue = &cxdev->videoqueue;
 strscpy(cxdev->videodev->name, "cxusb", sizeof(cxdev->videodev->name));
 cxdev->videodev->vfl_dir = VFL_DIR_RX;
 cxdev->videodev->ioctl_ops = &cxusb_video_ioctl;
 cxdev->videodev->tvnorms = V4L2_STD_ALL;
 cxdev->videodev->release = cxusb_medion_videodev_release;
 cxdev->videodev->lock = &cxdev->dev_lock;
 video_set_drvdata(cxdev->videodev, dvbdev);

 ret = video_register_device(cxdev->videodev, VFL_TYPE_GRABBER, -1);
 if (ret) {
  dev_err(&dvbdev->udev->dev,
   "video device register failed, ret = %d\n", ret);
  goto ret_vrelease;
 }

 return 0;

ret_vrelease:
 video_device_release(cxdev->videodev);

ret_qrelease:
 vb2_queue_release(&cxdev->videoqueue);

 return ret;
}

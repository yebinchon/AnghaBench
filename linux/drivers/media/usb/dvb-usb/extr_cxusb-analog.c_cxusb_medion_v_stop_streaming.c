
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct dvb_usb_device {TYPE_1__* udev; struct cxusb_medion_dev* priv; } ;
struct TYPE_6__ {int buf; } ;
struct cxusb_medion_dev {int stop_streaming; TYPE_3__ auxbuf; TYPE_2__* videodev; int urbwork; scalar_t__* streamurbs; int cx25840; } ;
struct TYPE_5__ {int lock; } ;
struct TYPE_4__ {int dev; } ;


 int CMD_STREAMING_OFF ;
 unsigned int CXUSB_VIDEO_URBS ;
 int OPS ;
 scalar_t__ WARN_ON (int) ;
 int cxusb_ctrl_msg (struct dvb_usb_device*,int ,int *,int ,int *,int ) ;
 int cxusb_medion_return_buffers (struct cxusb_medion_dev*,int) ;
 int cxusb_medion_urbs_free (struct cxusb_medion_dev*) ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*) ;
 int dev_err (int *,char*,int) ;
 int flush_work (int *) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int s_stream ;
 int usb_kill_urb (scalar_t__) ;
 int v4l2_subdev_call (int ,int ,int ,int ) ;
 struct dvb_usb_device* vb2_get_drv_priv (struct vb2_queue*) ;
 int vfree (int ) ;
 int video ;

__attribute__((used)) static void cxusb_medion_v_stop_streaming(struct vb2_queue *q)
{
 struct dvb_usb_device *dvbdev = vb2_get_drv_priv(q);
 struct cxusb_medion_dev *cxdev = dvbdev->priv;
 int ret;
 unsigned int i;

 cxusb_vprintk(dvbdev, OPS, "should stop streaming\n");

 if (WARN_ON(cxdev->stop_streaming))
  return;

 cxdev->stop_streaming = 1;

 cxusb_ctrl_msg(dvbdev, CMD_STREAMING_OFF, ((void*)0), 0, ((void*)0), 0);

 ret = v4l2_subdev_call(cxdev->cx25840, video, s_stream, 0);
 if (ret != 0)
  dev_err(&dvbdev->udev->dev, "unable to stop stream (%d)\n",
   ret);


 mutex_unlock(cxdev->videodev->lock);

 for (i = 0; i < CXUSB_VIDEO_URBS; i++)
  if (cxdev->streamurbs[i])
   usb_kill_urb(cxdev->streamurbs[i]);

 flush_work(&cxdev->urbwork);

 mutex_lock(cxdev->videodev->lock);


 vfree(cxdev->auxbuf.buf);

 cxusb_medion_urbs_free(cxdev);

 cxusb_medion_return_buffers(cxdev, 0);

 cxdev->stop_streaming = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {scalar_t__ vfl_type; } ;
struct file {int dummy; } ;
struct dvb_usb_device {int dummy; } ;


 int OPS ;
 scalar_t__ VFL_TYPE_GRABBER ;
 int cxusb_medion_put (struct dvb_usb_device*) ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*) ;
 int v4l2_fh_release (struct file*) ;
 int vb2_fop_release (struct file*) ;
 struct video_device* video_devdata (struct file*) ;
 struct dvb_usb_device* video_drvdata (struct file*) ;

__attribute__((used)) static int cxusb_videoradio_release(struct file *f)
{
 struct video_device *vdev = video_devdata(f);
 struct dvb_usb_device *dvbdev = video_drvdata(f);
 int ret;

 cxusb_vprintk(dvbdev, OPS, "got release\n");

 if (vdev->vfl_type == VFL_TYPE_GRABBER)
  ret = vb2_fop_release(f);
 else
  ret = v4l2_fh_release(f);

 cxusb_medion_put(dvbdev);

 return ret;
}

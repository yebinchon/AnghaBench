
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dvb_usb_device {int dummy; } ;


 int CXUSB_OPEN_ANALOG ;
 int OPS ;
 int cxusb_medion_get (struct dvb_usb_device*,int ) ;
 int cxusb_medion_put (struct dvb_usb_device*) ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*) ;
 int v4l2_fh_open (struct file*) ;
 struct dvb_usb_device* video_drvdata (struct file*) ;

__attribute__((used)) static int cxusb_videoradio_open(struct file *f)
{
 struct dvb_usb_device *dvbdev = video_drvdata(f);
 int ret;






 ret = cxusb_medion_get(dvbdev, CXUSB_OPEN_ANALOG);
 if (ret != 0)
  return ret;

 ret = v4l2_fh_open(f);
 if (ret != 0)
  goto ret_release;

 cxusb_vprintk(dvbdev, OPS, "got open\n");

 return 0;

ret_release:
 cxusb_medion_put(dvbdev);

 return ret;
}

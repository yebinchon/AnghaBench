
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {int v4l2_release; int v4l2dev; int videodev; int radiodev; } ;


 int OPS ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*) ;
 int v4l2_device_put (int *) ;
 int video_unregister_device (int ) ;
 int wait_for_completion (int *) ;

void cxusb_medion_unregister_analog(struct dvb_usb_device *dvbdev)
{
 struct cxusb_medion_dev *cxdev = dvbdev->priv;

 cxusb_vprintk(dvbdev, OPS, "unregistering analog\n");

 video_unregister_device(cxdev->radiodev);
 video_unregister_device(cxdev->videodev);

 v4l2_device_put(&cxdev->v4l2dev);
 wait_for_completion(&cxdev->v4l2_release);

 cxusb_vprintk(dvbdev, OPS, "analog unregistered\n");
}

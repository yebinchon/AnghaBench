
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int queue; } ;
struct dvb_usb_device {int dummy; } ;


 int OPS ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*) ;
 int vb2_queue_release (int ) ;
 int video_device_release (struct video_device*) ;
 struct dvb_usb_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static void cxusb_medion_videodev_release(struct video_device *vdev)
{
 struct dvb_usb_device *dvbdev = video_get_drvdata(vdev);

 cxusb_vprintk(dvbdev, OPS, "video device release\n");

 vb2_queue_release(vdev->queue);

 video_device_release(vdev);
}

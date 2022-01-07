
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {struct dvb_usb_device* context; } ;
struct dvb_usb_device {TYPE_1__* udev; struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {int urbwork; int urbcomplete; struct urb** streamurbs; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int CXUSB_VIDEO_URBS ;
 int URB ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*,unsigned int) ;
 int dev_err (int *,char*) ;
 int schedule_work (int *) ;
 int set_bit (unsigned int,int *) ;

__attribute__((used)) static void cxusb_medion_v_complete(struct urb *u)
{
 struct dvb_usb_device *dvbdev = u->context;
 struct cxusb_medion_dev *cxdev = dvbdev->priv;
 unsigned int i;

 for (i = 0; i < CXUSB_VIDEO_URBS; i++)
  if (cxdev->streamurbs[i] == u)
   break;

 if (i >= CXUSB_VIDEO_URBS) {
  dev_err(&dvbdev->udev->dev,
   "complete on unknown URB\n");
  return;
 }

 cxusb_vprintk(dvbdev, URB, "URB %u complete\n", i);

 set_bit(i, &cxdev->urbcomplete);
 schedule_work(&cxdev->urbwork);
}

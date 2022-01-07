
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {int open_lock; int open_type; struct dvb_usb_device* dvbdev; } ;


 int CXUSB_OPEN_INIT ;
 int mutex_init (int *) ;

__attribute__((used)) static int cxusb_medion_priv_init(struct dvb_usb_device *dvbdev)
{
 struct cxusb_medion_dev *cxdev = dvbdev->priv;

 cxdev->dvbdev = dvbdev;
 cxdev->open_type = CXUSB_OPEN_INIT;
 mutex_init(&cxdev->open_lock);

 return 0;
}

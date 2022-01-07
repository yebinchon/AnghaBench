
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {int open_lock; } ;


 int mutex_destroy (int *) ;

__attribute__((used)) static void cxusb_medion_priv_destroy(struct dvb_usb_device *dvbdev)
{
 struct cxusb_medion_dev *cxdev = dvbdev->priv;

 mutex_destroy(&cxdev->open_lock);
}

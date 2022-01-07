
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {scalar_t__ open_type; int open_ctr; int open_lock; } ;


 scalar_t__ CXUSB_OPEN_ANALOG ;
 scalar_t__ CXUSB_OPEN_INIT ;
 scalar_t__ CXUSB_OPEN_NONE ;
 int WARN_ON (int) ;
 int deb_info (char*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void cxusb_medion_put(struct dvb_usb_device *dvbdev)
{
 struct cxusb_medion_dev *cxdev = dvbdev->priv;

 mutex_lock(&cxdev->open_lock);

 if (cxdev->open_type == CXUSB_OPEN_INIT) {
  WARN_ON(cxdev->open_ctr != 0);
  cxdev->open_type = CXUSB_OPEN_NONE;
  goto unlock;
 }

 if (!WARN_ON(cxdev->open_ctr < 1)) {
  cxdev->open_ctr--;

  deb_info("release %s\n",
    cxdev->open_type == CXUSB_OPEN_ANALOG ?
    "analog" : "digital");
 }

unlock:
 mutex_unlock(&cxdev->open_lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_device {TYPE_1__* udev; struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {scalar_t__ open_type; int open_ctr; int open_lock; } ;
typedef enum cxusb_open_type { ____Placeholder_cxusb_open_type } cxusb_open_type ;
struct TYPE_2__ {int dev; } ;


 int CXUSB_OPEN_ANALOG ;
 scalar_t__ CXUSB_OPEN_INIT ;
 scalar_t__ CXUSB_OPEN_NONE ;
 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int _cxusb_power_ctrl (struct dvb_usb_device*,int) ;
 int cxusb_medion_analog_init (struct dvb_usb_device*) ;
 int cxusb_medion_set_mode (struct dvb_usb_device*,int) ;
 int deb_info (char*,char*) ;
 int dev_warn (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int cxusb_medion_get(struct dvb_usb_device *dvbdev,
       enum cxusb_open_type open_type)
{
 struct cxusb_medion_dev *cxdev = dvbdev->priv;
 int ret = 0;

 mutex_lock(&cxdev->open_lock);

 if (WARN_ON((cxdev->open_type == CXUSB_OPEN_INIT ||
       cxdev->open_type == CXUSB_OPEN_NONE) &&
      cxdev->open_ctr != 0)) {
  ret = -EINVAL;
  goto ret_unlock;
 }

 if (cxdev->open_type == CXUSB_OPEN_INIT) {
  ret = -EAGAIN;
  goto ret_unlock;
 }

 if (cxdev->open_ctr == 0) {
  if (cxdev->open_type != open_type) {
   deb_info("will acquire and switch to %s\n",
     open_type == CXUSB_OPEN_ANALOG ?
     "analog" : "digital");

   if (open_type == CXUSB_OPEN_ANALOG) {
    ret = _cxusb_power_ctrl(dvbdev, 1);
    if (ret != 0)
     dev_warn(&dvbdev->udev->dev,
       "powerup for analog switch failed (%d)\n",
       ret);

    ret = cxusb_medion_set_mode(dvbdev, 0);
    if (ret != 0)
     goto ret_unlock;

    ret = cxusb_medion_analog_init(dvbdev);
    if (ret != 0)
     goto ret_unlock;
   } else {
    ret = _cxusb_power_ctrl(dvbdev, 1);
    if (ret != 0)
     dev_warn(&dvbdev->udev->dev,
       "powerup for digital switch failed (%d)\n",
       ret);

    ret = cxusb_medion_set_mode(dvbdev, 1);
    if (ret != 0)
     goto ret_unlock;
   }

   cxdev->open_type = open_type;
  } else {
   deb_info("reacquired idle %s\n",
     open_type == CXUSB_OPEN_ANALOG ?
     "analog" : "digital");
  }

  cxdev->open_ctr = 1;
 } else if (cxdev->open_type == open_type) {
  cxdev->open_ctr++;
  deb_info("acquired %s\n", open_type == CXUSB_OPEN_ANALOG ?
    "analog" : "digital");
 } else {
  ret = -EBUSY;
 }

ret_unlock:
 mutex_unlock(&cxdev->open_lock);

 return ret;
}

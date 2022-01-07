
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* devices; } ;
struct dvb_usb_device {struct cxusb_medion_dev* priv; TYPE_2__ props; } ;
struct cxusb_medion_dev {scalar_t__ open_type; int open_lock; } ;
struct TYPE_3__ {int ** warm_ids; } ;


 scalar_t__ CXUSB_OPEN_ANALOG ;
 int EBUSY ;
 size_t MEDION_MD95700 ;
 int _cxusb_power_ctrl (struct dvb_usb_device*,int) ;
 int * cxusb_table ;
 int deb_info (char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cxusb_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 bool is_medion = d->props.devices[0].warm_ids[0] == &cxusb_table[MEDION_MD95700];
 int ret;

 if (is_medion && !onoff) {
  struct cxusb_medion_dev *cxdev = d->priv;

  mutex_lock(&cxdev->open_lock);

  if (cxdev->open_type == CXUSB_OPEN_ANALOG) {
   deb_info("preventing DVB core from setting power OFF while we are in analog mode\n");
   ret = -EBUSY;
   goto ret_unlock;
  }
 }

 ret = _cxusb_power_ctrl(d, onoff);

ret_unlock:
 if (is_medion && !onoff) {
  struct cxusb_medion_dev *cxdev = d->priv;

  mutex_unlock(&cxdev->open_lock);
 }

 return ret;
}

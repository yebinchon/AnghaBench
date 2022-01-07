
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int usb_mutex; } ;


 int REQUEST_IN ;
 int REQUEST_OUT ;
 int msleep (int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int vp702x_usb_in_op_unlocked (struct dvb_usb_device*,int ,int ,int ,int *,int) ;
 int vp702x_usb_out_op_unlocked (struct dvb_usb_device*,int ,int ,int ,int *,int) ;

int vp702x_usb_inout_op(struct dvb_usb_device *d, u8 *o, int olen, u8 *i, int ilen, int msec)
{
 int ret;

 if ((ret = mutex_lock_interruptible(&d->usb_mutex)))
  return ret;

 ret = vp702x_usb_out_op_unlocked(d, REQUEST_OUT, 0, 0, o, olen);
 msleep(msec);
 ret = vp702x_usb_in_op_unlocked(d, REQUEST_IN, 0, 0, i, ilen);

 mutex_unlock(&d->usb_mutex);
 return ret;
}

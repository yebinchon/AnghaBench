
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int udev; struct az6007_device_state* priv; } ;
struct az6007_device_state {int mutex; } ;


 int EAGAIN ;
 int __az6007_write (int ,int ,int ,int ,int *,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int az6007_write(struct dvb_usb_device *d, u8 req, u16 value,
       u16 index, u8 *b, int blen)
{
 struct az6007_device_state *st = d->priv;
 int ret;

 if (mutex_lock_interruptible(&st->mutex) < 0)
  return -EAGAIN;

 ret = __az6007_write(d->udev, req, value, index, b, blen);

 mutex_unlock(&st->mutex);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int usb_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vp702x_usb_out_op_unlocked (struct dvb_usb_device*,int ,int ,int ,int *,int) ;

__attribute__((used)) static int vp702x_usb_out_op(struct dvb_usb_device *d, u8 req, u16 value,
        u16 index, u8 *b, int blen)
{
 int ret;

 mutex_lock(&d->usb_mutex);
 ret = vp702x_usb_out_op_unlocked(d, req, value, index, b, blen);
 mutex_unlock(&d->usb_mutex);

 return ret;
}

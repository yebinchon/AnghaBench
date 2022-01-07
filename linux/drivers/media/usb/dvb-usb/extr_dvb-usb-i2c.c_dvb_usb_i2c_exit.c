
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int state; int i2c_adap; } ;


 int DVB_USB_STATE_I2C ;
 int i2c_del_adapter (int *) ;

int dvb_usb_i2c_exit(struct dvb_usb_device *d)
{
 if (d->state & DVB_USB_STATE_I2C)
  i2c_del_adapter(&d->i2c_adap);
 d->state &= ~DVB_USB_STATE_I2C;
 return 0;
}

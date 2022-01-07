
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * parent; } ;
struct TYPE_11__ {TYPE_3__ dev; int * algo_data; int * algo; int name; } ;
struct TYPE_8__ {int caps; int * i2c_algo; } ;
struct dvb_usb_device {int state; TYPE_5__ i2c_adap; TYPE_4__* udev; TYPE_2__ props; TYPE_1__* desc; } ;
struct TYPE_10__ {int dev; } ;
struct TYPE_7__ {int name; } ;


 int DVB_USB_IS_AN_I2C_ADAPTER ;
 int DVB_USB_STATE_I2C ;
 int EINVAL ;
 int err (char*) ;
 int i2c_add_adapter (TYPE_5__*) ;
 int i2c_set_adapdata (TYPE_5__*,struct dvb_usb_device*) ;
 int strscpy (int ,int ,int) ;

int dvb_usb_i2c_init(struct dvb_usb_device *d)
{
 int ret = 0;

 if (!(d->props.caps & DVB_USB_IS_AN_I2C_ADAPTER))
  return 0;

 if (d->props.i2c_algo == ((void*)0)) {
  err("no i2c algorithm specified");
  return -EINVAL;
 }

 strscpy(d->i2c_adap.name, d->desc->name, sizeof(d->i2c_adap.name));
 d->i2c_adap.algo = d->props.i2c_algo;
 d->i2c_adap.algo_data = ((void*)0);
 d->i2c_adap.dev.parent = &d->udev->dev;

 i2c_set_adapdata(&d->i2c_adap, d);

 if ((ret = i2c_add_adapter(&d->i2c_adap)) < 0)
  err("could not add i2c adapter");

 d->state |= DVB_USB_STATE_I2C;

 return ret;
}

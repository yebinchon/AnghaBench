
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size_of_priv; int (* priv_init ) (struct dvb_usb_device*) ;} ;
struct dvb_usb_device {int * priv; TYPE_1__ props; int state; int i2c_mutex; int usb_mutex; int data_mutex; } ;


 int DVB_USB_STATE_INIT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dvb_usb_adapter_init (struct dvb_usb_device*,short*) ;
 int dvb_usb_device_power_ctrl (struct dvb_usb_device*,int) ;
 int dvb_usb_exit (struct dvb_usb_device*) ;
 int dvb_usb_i2c_init (struct dvb_usb_device*) ;
 int dvb_usb_remote_init (struct dvb_usb_device*) ;
 int err (char*) ;
 int kfree (int *) ;
 int * kzalloc (scalar_t__,int ) ;
 int mutex_init (int *) ;
 int stub1 (struct dvb_usb_device*) ;

__attribute__((used)) static int dvb_usb_init(struct dvb_usb_device *d, short *adapter_nums)
{
 int ret = 0;

 mutex_init(&d->data_mutex);
 mutex_init(&d->usb_mutex);
 mutex_init(&d->i2c_mutex);

 d->state = DVB_USB_STATE_INIT;

 if (d->props.size_of_priv > 0) {
  d->priv = kzalloc(d->props.size_of_priv, GFP_KERNEL);
  if (d->priv == ((void*)0)) {
   err("no memory for priv in 'struct dvb_usb_device'");
   return -ENOMEM;
  }

  if (d->props.priv_init != ((void*)0)) {
   ret = d->props.priv_init(d);
   if (ret != 0) {
    kfree(d->priv);
    d->priv = ((void*)0);
    return ret;
   }
  }
 }


 dvb_usb_device_power_ctrl(d, 1);

 if ((ret = dvb_usb_i2c_init(d)) ||
  (ret = dvb_usb_adapter_init(d, adapter_nums))) {
  dvb_usb_exit(d);
  return ret;
 }

 if ((ret = dvb_usb_remote_init(d)))
  err("could not initialize remote control.");

 dvb_usb_device_power_ctrl(d, 0);

 return 0;
}

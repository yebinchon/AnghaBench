
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct stv6110x_devctl {int tuner_get_status; int tuner_set_refclk; int tuner_get_bbgain; int tuner_set_bbgain; int tuner_get_bandwidth; int tuner_set_bandwidth; int tuner_get_frequency; int tuner_set_frequency; int tuner_set_mode; int tuner_sleep; int tuner_init; } ;
struct dvb_usb_adapter {TYPE_4__* fe_adap; TYPE_6__* dev; } ;
struct TYPE_15__ {TYPE_3__* desc; int i2c_mutex; int i2c_adap; struct usb_device* udev; } ;
struct TYPE_10__ {int name; } ;
struct TYPE_11__ {TYPE_1__ info; int set_voltage; int (* init ) (TYPE_5__*) ;} ;
struct TYPE_14__ {TYPE_2__ ops; int tuner_get_status; int tuner_set_refclk; int tuner_get_bbgain; int tuner_set_bbgain; int tuner_get_bandwidth; int tuner_set_bandwidth; int tuner_get_frequency; int tuner_set_frequency; int tuner_set_mode; int tuner_sleep; int tuner_init; } ;
struct TYPE_13__ {TYPE_5__* fe; } ;
struct TYPE_12__ {int name; } ;


 int EAGAIN ;
 int ENODEV ;
 int SET_IFCLK_TO_EXTERNAL_TSCLK_VENDOR_REQUEST ;
 int * STV090x_DEMODULATOR_0 ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 void* dvb_attach (int ,TYPE_5__*,int *,int *) ;
 int dvb_frontend_detach (TYPE_5__*) ;
 int err (char*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int strscpy (int ,int ,int) ;
 int stub1 (TYPE_5__*) ;
 int stv090x_attach ;
 int stv6110x_attach ;
 int technisat_usb2_set_led_timer (TYPE_6__*,int,int) ;
 int technisat_usb2_set_voltage ;
 TYPE_5__ technisat_usb2_stv090x_config ;
 int technisat_usb2_stv6110x_config ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int technisat_usb2_frontend_attach(struct dvb_usb_adapter *a)
{
 struct usb_device *udev = a->dev->udev;
 int ret;

 a->fe_adap[0].fe = dvb_attach(stv090x_attach, &technisat_usb2_stv090x_config,
   &a->dev->i2c_adap, STV090x_DEMODULATOR_0);

 if (a->fe_adap[0].fe) {
  const struct stv6110x_devctl *ctl;

  ctl = dvb_attach(stv6110x_attach,
    a->fe_adap[0].fe,
    &technisat_usb2_stv6110x_config,
    &a->dev->i2c_adap);

  if (ctl) {
   technisat_usb2_stv090x_config.tuner_init = ctl->tuner_init;
   technisat_usb2_stv090x_config.tuner_sleep = ctl->tuner_sleep;
   technisat_usb2_stv090x_config.tuner_set_mode = ctl->tuner_set_mode;
   technisat_usb2_stv090x_config.tuner_set_frequency = ctl->tuner_set_frequency;
   technisat_usb2_stv090x_config.tuner_get_frequency = ctl->tuner_get_frequency;
   technisat_usb2_stv090x_config.tuner_set_bandwidth = ctl->tuner_set_bandwidth;
   technisat_usb2_stv090x_config.tuner_get_bandwidth = ctl->tuner_get_bandwidth;
   technisat_usb2_stv090x_config.tuner_set_bbgain = ctl->tuner_set_bbgain;
   technisat_usb2_stv090x_config.tuner_get_bbgain = ctl->tuner_get_bbgain;
   technisat_usb2_stv090x_config.tuner_set_refclk = ctl->tuner_set_refclk;
   technisat_usb2_stv090x_config.tuner_get_status = ctl->tuner_get_status;




   if (a->fe_adap[0].fe->ops.init)
    a->fe_adap[0].fe->ops.init(a->fe_adap[0].fe);

   if (mutex_lock_interruptible(&a->dev->i2c_mutex) < 0)
    return -EAGAIN;

   ret = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
     SET_IFCLK_TO_EXTERNAL_TSCLK_VENDOR_REQUEST,
     USB_TYPE_VENDOR | USB_DIR_OUT,
     0, 0,
     ((void*)0), 0, 500);
   mutex_unlock(&a->dev->i2c_mutex);

   if (ret != 0)
    err("could not set IF_CLK to external");

   a->fe_adap[0].fe->ops.set_voltage = technisat_usb2_set_voltage;


   strscpy(a->fe_adap[0].fe->ops.info.name,
    a->dev->desc->name,
    sizeof(a->fe_adap[0].fe->ops.info.name));
  } else {
   dvb_frontend_detach(a->fe_adap[0].fe);
   a->fe_adap[0].fe = ((void*)0);
  }
 }

 technisat_usb2_set_led_timer(a->dev, 1, 1);

 return a->fe_adap[0].fe == ((void*)0) ? -ENODEV : 0;
}

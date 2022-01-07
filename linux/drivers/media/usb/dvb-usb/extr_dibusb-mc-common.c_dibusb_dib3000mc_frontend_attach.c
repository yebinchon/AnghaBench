
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dvb_usb_adapter {struct dibusb_state* priv; TYPE_4__* fe_adap; TYPE_3__* dev; } ;
struct TYPE_10__ {int pid_ctrl; int pid_parse; } ;
struct dibusb_state {TYPE_5__ ops; } ;
struct TYPE_9__ {int * fe; } ;
struct TYPE_8__ {int i2c_adap; TYPE_2__* udev; } ;
struct TYPE_6__ {int idProduct; int idVendor; } ;
struct TYPE_7__ {TYPE_1__ descriptor; } ;


 int DEFAULT_DIB3000MC_I2C_ADDRESS ;
 int DEFAULT_DIB3000P_I2C_ADDRESS ;
 int ENODEV ;
 scalar_t__ USB_PID_LITEON_DVB_T_WARM ;
 scalar_t__ USB_VID_LITEON ;
 int dib3000mc_attach ;
 int dib3000mc_pid_control ;
 int dib3000mc_pid_parse ;
 void* dvb_attach (int ,int *,int ,int *) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mod3000p_dib3000p_config ;
 int msleep (int) ;

int dibusb_dib3000mc_frontend_attach(struct dvb_usb_adapter *adap)
{
 if (le16_to_cpu(adap->dev->udev->descriptor.idVendor) == USB_VID_LITEON &&
     le16_to_cpu(adap->dev->udev->descriptor.idProduct) ==
   USB_PID_LITEON_DVB_T_WARM) {
  msleep(1000);
 }

 adap->fe_adap[0].fe = dvb_attach(dib3000mc_attach,
      &adap->dev->i2c_adap,
      DEFAULT_DIB3000P_I2C_ADDRESS,
      &mod3000p_dib3000p_config);
 if ((adap->fe_adap[0].fe) == ((void*)0))
  adap->fe_adap[0].fe = dvb_attach(dib3000mc_attach,
       &adap->dev->i2c_adap,
       DEFAULT_DIB3000MC_I2C_ADDRESS,
       &mod3000p_dib3000p_config);
 if ((adap->fe_adap[0].fe) != ((void*)0)) {
  if (adap->priv != ((void*)0)) {
   struct dibusb_state *st = adap->priv;
   st->ops.pid_parse = dib3000mc_pid_parse;
   st->ops.pid_ctrl = dib3000mc_pid_control;
  }
  return 0;
 }
 return -ENODEV;
}

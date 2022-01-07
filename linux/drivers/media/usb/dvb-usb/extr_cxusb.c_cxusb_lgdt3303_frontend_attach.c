
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_1__* fe_adap; TYPE_2__* dev; } ;
struct TYPE_4__ {int i2c_adap; int udev; } ;
struct TYPE_3__ {scalar_t__ fe; } ;


 int CMD_DIGITAL ;
 int EIO ;
 int cxusb_ctrl_msg (TYPE_2__*,int ,int *,int ,int *,int ) ;
 int cxusb_lgdt3303_config ;
 scalar_t__ dvb_attach (int ,int *,int,int *) ;
 int err (char*) ;
 int lgdt330x_attach ;
 scalar_t__ usb_set_interface (int ,int ,int) ;

__attribute__((used)) static int cxusb_lgdt3303_frontend_attach(struct dvb_usb_adapter *adap)
{
 if (usb_set_interface(adap->dev->udev, 0, 7) < 0)
  err("set interface failed");

 cxusb_ctrl_msg(adap->dev, CMD_DIGITAL, ((void*)0), 0, ((void*)0), 0);

 adap->fe_adap[0].fe = dvb_attach(lgdt330x_attach,
      &cxusb_lgdt3303_config,
      0x0e,
      &adap->dev->i2c_adap);
 if (adap->fe_adap[0].fe)
  return 0;

 return -EIO;
}

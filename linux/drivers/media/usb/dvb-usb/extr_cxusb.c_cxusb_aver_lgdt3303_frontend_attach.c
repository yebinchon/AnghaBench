
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_adapter {TYPE_2__* fe_adap; TYPE_1__* dev; } ;
struct TYPE_4__ {scalar_t__ fe; } ;
struct TYPE_3__ {int i2c_adap; } ;


 int EIO ;
 int cxusb_aver_lgdt3303_config ;
 scalar_t__ dvb_attach (int ,int *,int,int *) ;
 int lgdt330x_attach ;

__attribute__((used)) static int cxusb_aver_lgdt3303_frontend_attach(struct dvb_usb_adapter *adap)
{
 adap->fe_adap[0].fe = dvb_attach(lgdt330x_attach,
      &cxusb_aver_lgdt3303_config,
      0x0e,
      &adap->dev->i2c_adap);
 if (adap->fe_adap[0].fe)
  return 0;

 return -EIO;
}

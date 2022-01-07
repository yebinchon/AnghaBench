
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl28xxu_dev {int tuner; int demod_i2c_adapter; } ;
struct dvb_usb_device {TYPE_1__* intf; } ;
struct dvb_usb_adapter {int * fe; } ;
struct dvb_frontend {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ENODEV ;



 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 struct rtl28xxu_dev* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,int) ;
 struct dvb_frontend* dvb_attach (int ,int ,int ,int *,...) ;
 int mt2060_attach ;
 int mxl5005s_attach ;
 int qt1010_attach ;
 int rtl28xxu_mt2060_config ;
 int rtl28xxu_mxl5005s_config ;
 int rtl28xxu_qt1010_config ;

__attribute__((used)) static int rtl2831u_tuner_attach(struct dvb_usb_adapter *adap)
{
 int ret;
 struct dvb_usb_device *d = adap_to_d(adap);
 struct rtl28xxu_dev *dev = d_to_priv(d);
 struct dvb_frontend *fe;

 dev_dbg(&d->intf->dev, "\n");

 switch (dev->tuner) {
 case 128:
  fe = dvb_attach(qt1010_attach, adap->fe[0],
    dev->demod_i2c_adapter,
    &rtl28xxu_qt1010_config);
  break;
 case 130:
  fe = dvb_attach(mt2060_attach, adap->fe[0],
    dev->demod_i2c_adapter,
    &rtl28xxu_mt2060_config, 1220);
  break;
 case 129:
  fe = dvb_attach(mxl5005s_attach, adap->fe[0],
    dev->demod_i2c_adapter,
    &rtl28xxu_mxl5005s_config);
  break;
 default:
  fe = ((void*)0);
  dev_err(&d->intf->dev, "unknown tuner %d\n", dev->tuner);
 }

 if (fe == ((void*)0)) {
  ret = -ENODEV;
  goto err;
 }

 return 0;
err:
 dev_dbg(&d->intf->dev, "failed=%d\n", ret);
 return ret;
}

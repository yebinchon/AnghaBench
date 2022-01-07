
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl28xxu_dev {scalar_t__ chip_id; } ;
struct dvb_usb_adapter {int dummy; } ;


 scalar_t__ CHIP_ID_RTL2831U ;
 struct rtl28xxu_dev* adap_to_priv (struct dvb_usb_adapter*) ;
 int rtl2831u_tuner_attach (struct dvb_usb_adapter*) ;
 int rtl2832u_tuner_attach (struct dvb_usb_adapter*) ;

__attribute__((used)) static int rtl28xxu_tuner_attach(struct dvb_usb_adapter *adap)
{
 struct rtl28xxu_dev *dev = adap_to_priv(adap);

 if (dev->chip_id == CHIP_ID_RTL2831U)
  return rtl2831u_tuner_attach(adap);
 else
  return rtl2832u_tuner_attach(adap);
}

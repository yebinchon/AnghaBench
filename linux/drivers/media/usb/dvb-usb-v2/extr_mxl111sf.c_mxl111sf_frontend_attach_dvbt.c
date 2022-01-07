
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_adapter {int dummy; } ;


 int mxl111sf_attach_demod (struct dvb_usb_adapter*,int ) ;

__attribute__((used)) static int mxl111sf_frontend_attach_dvbt(struct dvb_usb_adapter *adap)
{
 return mxl111sf_attach_demod(adap, 0);
}

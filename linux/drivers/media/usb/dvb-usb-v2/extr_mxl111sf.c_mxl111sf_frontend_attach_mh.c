
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_adapter {int dummy; } ;


 int mxl111sf_lg2160_frontend_attach (struct dvb_usb_adapter*,int ) ;

__attribute__((used)) static int mxl111sf_frontend_attach_mh(struct dvb_usb_adapter *adap)
{
 return mxl111sf_lg2160_frontend_attach(adap, 0);
}

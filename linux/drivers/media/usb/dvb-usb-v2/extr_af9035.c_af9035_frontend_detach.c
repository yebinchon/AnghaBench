
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct state {scalar_t__* i2c_client; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct dvb_usb_adapter {int id; } ;


 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 struct state* adap_to_priv (struct dvb_usb_adapter*) ;
 int af9035_del_i2c_dev (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*,int) ;

__attribute__((used)) static int af9035_frontend_detach(struct dvb_usb_adapter *adap)
{
 struct state *state = adap_to_priv(adap);
 struct dvb_usb_device *d = adap_to_d(adap);
 struct usb_interface *intf = d->intf;

 dev_dbg(&intf->dev, "adap->id=%d\n", adap->id);

 if (adap->id == 1) {
  if (state->i2c_client[1])
   af9035_del_i2c_dev(d);
 } else if (adap->id == 0) {
  if (state->i2c_client[0])
   af9035_del_i2c_dev(d);
 }

 return 0;
}

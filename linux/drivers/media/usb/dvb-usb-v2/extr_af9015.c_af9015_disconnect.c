
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct af9015_state {int regmap; } ;


 struct af9015_state* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*) ;
 int regmap_exit (int ) ;

__attribute__((used)) static void af9015_disconnect(struct dvb_usb_device *d)
{
 struct af9015_state *state = d_to_priv(d);
 struct usb_interface *intf = d->intf;

 dev_dbg(&intf->dev, "\n");

 regmap_exit(state->regmap);
}

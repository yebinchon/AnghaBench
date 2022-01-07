
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;


 int gp8psk_bcm4500_reload (struct dvb_usb_device*) ;

__attribute__((used)) static int gp8psk_fe_reload(void *priv)
{
 struct dvb_usb_device *d = priv;

 return gp8psk_bcm4500_reload(d);
}

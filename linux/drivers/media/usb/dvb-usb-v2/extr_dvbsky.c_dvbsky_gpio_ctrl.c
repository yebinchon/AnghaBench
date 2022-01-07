
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int dvbsky_usb_generic_rw (struct dvb_usb_device*,int*,int,int*,int) ;

__attribute__((used)) static int dvbsky_gpio_ctrl(struct dvb_usb_device *d, u8 gport, u8 value)
{
 int ret;
 u8 obuf[3], ibuf[2];

 obuf[0] = 0x0e;
 obuf[1] = gport;
 obuf[2] = value;
 ret = dvbsky_usb_generic_rw(d, obuf, 3, ibuf, 1);
 return ret;
}

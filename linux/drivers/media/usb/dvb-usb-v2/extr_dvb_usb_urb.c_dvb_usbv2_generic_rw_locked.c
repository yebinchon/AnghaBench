
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int dvb_usb_v2_generic_io (struct dvb_usb_device*,int *,int ,int *,int ) ;

int dvb_usbv2_generic_rw_locked(struct dvb_usb_device *d,
  u8 *wbuf, u16 wlen, u8 *rbuf, u16 rlen)
{
 return dvb_usb_v2_generic_io(d, wbuf, wlen, rbuf, rlen);
}

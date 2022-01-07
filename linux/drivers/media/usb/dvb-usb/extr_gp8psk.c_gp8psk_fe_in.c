
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int gp8psk_usb_in_op (struct dvb_usb_device*,int ,int ,int ,int *,int) ;

__attribute__((used)) static int gp8psk_fe_in(void *priv, u8 req, u16 value,
       u16 index, u8 *b, int blen)
{
 struct dvb_usb_device *d = priv;

 return gp8psk_usb_in_op(d, req, value, index, b, blen);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dvb_usb_device {int rc_dev; } ;


 int RC_PROTO_UNKNOWN ;
 int RC_SCANCODE_RC5 (scalar_t__,scalar_t__) ;
 scalar_t__ cxusb_ctrl_msg (struct dvb_usb_device*,int,int *,int ,scalar_t__*,int) ;
 int rc_keydown (int ,int ,int ,int ) ;

__attribute__((used)) static int cxusb_d680_dmb_rc_query(struct dvb_usb_device *d)
{
 u8 ircode[2];

 if (cxusb_ctrl_msg(d, 0x10, ((void*)0), 0, ircode, 2) < 0)
  return 0;

 if (ircode[0] || ircode[1])
  rc_keydown(d->rc_dev, RC_PROTO_UNKNOWN,
      RC_SCANCODE_RC5(ircode[0], ircode[1]), 0);
 return 0;
}

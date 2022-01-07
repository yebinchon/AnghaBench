
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int rc_dev; } ;


 int CMD_GET_IR_CODE ;
 int RC_PROTO_NEC ;
 int RC_SCANCODE_NEC (int,int) ;
 int cxusb_ctrl_msg (struct dvb_usb_device*,int ,int *,int ,int*,int) ;
 int rc_keydown (int ,int ,int ,int ) ;

__attribute__((used)) static int cxusb_rc_query(struct dvb_usb_device *d)
{
 u8 ircode[4];

 cxusb_ctrl_msg(d, CMD_GET_IR_CODE, ((void*)0), 0, ircode, 4);

 if (ircode[2] || ircode[3])
  rc_keydown(d->rc_dev, RC_PROTO_NEC,
      RC_SCANCODE_NEC(~ircode[2] & 0xff, ircode[3]), 0);
 return 0;
}

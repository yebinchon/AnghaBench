
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int rc_dev; } ;


 int RC_PROTO_NEC ;
 int RC_SCANCODE_NEC (int ,int) ;
 int RC_VAL_READ ;
 int deb_rc (char*,int,int) ;
 int rc_keydown (int ,int ,int ,int ) ;
 int vp7045_usb_op (struct dvb_usb_device*,int ,int *,int ,int*,int,int) ;

__attribute__((used)) static int vp7045_rc_query(struct dvb_usb_device *d)
{
 u8 key;
 vp7045_usb_op(d,RC_VAL_READ,((void*)0),0,&key,1,20);

 deb_rc("remote query key: %x %d\n",key,key);

 if (key != 0x44) {





  rc_keydown(d->rc_dev, RC_PROTO_NEC, RC_SCANCODE_NEC(0, key), 0);
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_rc {int allowed_protos; } ;
struct dvb_usb_device {int dummy; } ;


 int RC_PROTO_BIT_NEC32 ;

__attribute__((used)) static int lme2510_get_rc_config(struct dvb_usb_device *d,
 struct dvb_usb_rc *rc)
{
 rc->allowed_protos = RC_PROTO_BIT_NEC32;
 return 0;
}

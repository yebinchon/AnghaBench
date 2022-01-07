
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int protocol; } ;
struct TYPE_5__ {TYPE_1__ core; } ;
struct TYPE_6__ {TYPE_2__ rc; } ;
struct dvb_usb_device {int rc_dev; TYPE_3__ props; struct dib0700_state* priv; } ;
struct dib0700_state {int fw_version; scalar_t__* buf; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 int EIO ;

 int RC_PROTO_NEC ;
 int RC_PROTO_RC5 ;
 int RC_SCANCODE_NEC (int,int) ;
 int RC_SCANCODE_RC5 (int,int) ;
 scalar_t__ REQUEST_POLL_RC ;
 int dib0700_ctrl_rd (struct dvb_usb_device*,scalar_t__*,int,scalar_t__*,int) ;
 int dib0700_rc_setup (struct dvb_usb_device*,int *) ;
 int err (char*) ;
 int rc_keydown (int ,int,int ,int) ;
 int rc_repeat (int ) ;

__attribute__((used)) static int dib0700_rc_query_old_firmware(struct dvb_usb_device *d)
{
 enum rc_proto protocol;
 u32 scancode;
 u8 toggle;
 int i;
 struct dib0700_state *st = d->priv;

 if (st->fw_version >= 0x10200) {




  return 0;
 }

 st->buf[0] = REQUEST_POLL_RC;
 st->buf[1] = 0;

 i = dib0700_ctrl_rd(d, st->buf, 2, st->buf, 4);
 if (i <= 0) {
  err("RC Query Failed");
  return -EIO;
 }


 if (st->buf[0] == 0 && st->buf[1] == 0
     && st->buf[2] == 0 && st->buf[3] == 0)
  return 0;



 dib0700_rc_setup(d, ((void*)0));

 switch (d->props.rc.core.protocol) {
 case 128:

  if ((st->buf[3 - 2] == 0x00) && (st->buf[3 - 3] == 0x00) &&
      (st->buf[3] == 0xff)) {
   rc_repeat(d->rc_dev);
   return 0;
  }

  protocol = RC_PROTO_NEC;
  scancode = RC_SCANCODE_NEC(st->buf[3 - 2], st->buf[3 - 3]);
  toggle = 0;
  break;

 default:

  protocol = RC_PROTO_RC5;
  scancode = RC_SCANCODE_RC5(st->buf[3 - 2], st->buf[3 - 3]);
  toggle = st->buf[3 - 1];
  break;
 }

 rc_keydown(d->rc_dev, protocol, scancode, toggle);
 return 0;
}

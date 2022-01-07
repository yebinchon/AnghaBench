
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct rc_dev {struct dvb_usb_device* priv; } ;
struct TYPE_4__ {int protocol; } ;
struct TYPE_5__ {TYPE_1__ core; } ;
struct TYPE_6__ {TYPE_2__ rc; } ;
struct dvb_usb_device {int usb_mutex; TYPE_3__ props; struct dib0700_state* priv; } ;
struct dib0700_state {int* buf; int fw_version; } ;


 int EINTR ;
 int EINVAL ;
 int RC_PROTO_BIT_NEC ;
 int RC_PROTO_BIT_RC5 ;
 int RC_PROTO_BIT_RC6_MCE ;
 int REQUEST_SET_RC ;
 int dib0700_ctrl_wr (struct dvb_usb_device*,int*,int) ;
 int err (char*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

int dib0700_change_protocol(struct rc_dev *rc, u64 *rc_proto)
{
 struct dvb_usb_device *d = rc->priv;
 struct dib0700_state *st = d->priv;
 int new_proto, ret;

 if (mutex_lock_interruptible(&d->usb_mutex) < 0) {
  err("could not acquire lock");
  return -EINTR;
 }

 st->buf[0] = REQUEST_SET_RC;
 st->buf[1] = 0;
 st->buf[2] = 0;


 if (*rc_proto & RC_PROTO_BIT_RC5) {
  new_proto = 1;
  *rc_proto = RC_PROTO_BIT_RC5;
 } else if (*rc_proto & RC_PROTO_BIT_NEC) {
  new_proto = 0;
  *rc_proto = RC_PROTO_BIT_NEC;
 } else if (*rc_proto & RC_PROTO_BIT_RC6_MCE) {
  if (st->fw_version < 0x10200) {
   ret = -EINVAL;
   goto out;
  }
  new_proto = 2;
  *rc_proto = RC_PROTO_BIT_RC6_MCE;
 } else {
  ret = -EINVAL;
  goto out;
 }

 st->buf[1] = new_proto;

 ret = dib0700_ctrl_wr(d, st->buf, 3);
 if (ret < 0) {
  err("ir protocol setup failed");
  goto out;
 }

 d->props.rc.core.protocol = *rc_proto;

out:
 mutex_unlock(&d->usb_mutex);
 return ret;
}

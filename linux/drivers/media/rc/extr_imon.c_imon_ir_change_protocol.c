
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rc_dev {int allowed_protocols; struct imon_context* priv; } ;
struct imon_context {int rc_proto; int pad_mouse; int lock; int usb_tx_buf; struct device* dev; } ;
struct device {int dummy; } ;
typedef int ir_proto_packet ;


 int RC_PROTO_BIT_IMON ;
 int RC_PROTO_BIT_RC6_MCE ;
 int dev_dbg (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int memcpy (int ,unsigned char**,int) ;
 int mutex_is_locked (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pad_stabilize ;
 int send_packet (struct imon_context*) ;

__attribute__((used)) static int imon_ir_change_protocol(struct rc_dev *rc, u64 *rc_proto)
{
 int retval;
 struct imon_context *ictx = rc->priv;
 struct device *dev = ictx->dev;
 bool unlock = 0;
 unsigned char ir_proto_packet[] = {
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x86 };

 if (*rc_proto && !(*rc_proto & rc->allowed_protocols))
  dev_warn(dev, "Looks like you're trying to use an IR protocol this device does not support\n");

 if (*rc_proto & RC_PROTO_BIT_RC6_MCE) {
  dev_dbg(dev, "Configuring IR receiver for MCE protocol\n");
  ir_proto_packet[0] = 0x01;
  *rc_proto = RC_PROTO_BIT_RC6_MCE;
 } else if (*rc_proto & RC_PROTO_BIT_IMON) {
  dev_dbg(dev, "Configuring IR receiver for iMON protocol\n");
  if (!pad_stabilize)
   dev_dbg(dev, "PAD stabilize functionality disabled\n");

  *rc_proto = RC_PROTO_BIT_IMON;
 } else {
  dev_warn(dev, "Unsupported IR protocol specified, overriding to iMON IR protocol\n");
  if (!pad_stabilize)
   dev_dbg(dev, "PAD stabilize functionality disabled\n");

  *rc_proto = RC_PROTO_BIT_IMON;
 }

 memcpy(ictx->usb_tx_buf, &ir_proto_packet, sizeof(ir_proto_packet));

 if (!mutex_is_locked(&ictx->lock)) {
  unlock = 1;
  mutex_lock(&ictx->lock);
 }

 retval = send_packet(ictx);
 if (retval)
  goto out;

 ictx->rc_proto = *rc_proto;
 ictx->pad_mouse = 0;

out:
 if (unlock)
  mutex_unlock(&ictx->lock);

 return retval;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct imon_context {int product; scalar_t__ rc_proto; int kc_lock; void* kc; } ;
typedef int __be32 ;


 int KEY_RESERVED ;
 void* KEY_UNKNOWN ;
 scalar_t__ RC_PROTO_BIT_IMON ;
 scalar_t__ abs (char) ;
 int be32_to_cpu (int ) ;
 void* imon_remote_key_lookup (struct imon_context*,int) ;
 scalar_t__ pad_stabilize ;
 int pad_thresh ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stabilize (int,int,int,int) ;

__attribute__((used)) static void imon_pad_to_keys(struct imon_context *ictx, unsigned char *buf)
{
 int dir = 0;
 signed char rel_x = 0x00, rel_y = 0x00;
 u16 timeout, threshold;
 u32 scancode = KEY_RESERVED;
 unsigned long flags;
 if (ictx->product != 0xffdc) {

  buf[5] = buf[6] = buf[7] = 0;
  timeout = 500;

  threshold = pad_thresh ? pad_thresh : 28;
  rel_x = buf[2];
  rel_y = buf[3];

  if (ictx->rc_proto == RC_PROTO_BIT_IMON && pad_stabilize) {
   if ((buf[1] == 0) && ((rel_x != 0) || (rel_y != 0))) {
    dir = stabilize((int)rel_x, (int)rel_y,
      timeout, threshold);
    if (!dir) {
     spin_lock_irqsave(&ictx->kc_lock,
         flags);
     ictx->kc = KEY_UNKNOWN;
     spin_unlock_irqrestore(&ictx->kc_lock,
              flags);
     return;
    }
    buf[2] = dir & 0xFF;
    buf[3] = (dir >> 8) & 0xFF;
    scancode = be32_to_cpu(*((__be32 *)buf));
   }
  } else {




   if (abs(rel_y) > abs(rel_x)) {
    buf[2] = (rel_y > 0) ? 0x7F : 0x80;
    buf[3] = 0;
    if (rel_y > 0)
     scancode = 0x01007f00;
    else
     scancode = 0x01008000;
   } else {
    buf[2] = 0;
    buf[3] = (rel_x > 0) ? 0x7F : 0x80;
    if (rel_x > 0)
     scancode = 0x0100007f;
    else
     scancode = 0x01000080;
   }
  }
 } else {
  timeout = 10;

  threshold = pad_thresh ? pad_thresh : 15;


  rel_x = (buf[1] & 0x08) | (buf[1] & 0x10) >> 2 |
   (buf[1] & 0x20) >> 4 | (buf[1] & 0x40) >> 6;
  if (buf[0] & 0x02)
   rel_x |= ~0x10+1;

  rel_y = (buf[2] & 0x08) | (buf[2] & 0x10) >> 2 |
   (buf[2] & 0x20) >> 4 | (buf[2] & 0x40) >> 6;
  if (buf[0] & 0x01)
   rel_y |= ~0x10+1;

  buf[0] = 0x01;
  buf[1] = buf[4] = buf[5] = buf[6] = buf[7] = 0;

  if (ictx->rc_proto == RC_PROTO_BIT_IMON && pad_stabilize) {
   dir = stabilize((int)rel_x, (int)rel_y,
     timeout, threshold);
   if (!dir) {
    spin_lock_irqsave(&ictx->kc_lock, flags);
    ictx->kc = KEY_UNKNOWN;
    spin_unlock_irqrestore(&ictx->kc_lock, flags);
    return;
   }
   buf[2] = dir & 0xFF;
   buf[3] = (dir >> 8) & 0xFF;
   scancode = be32_to_cpu(*((__be32 *)buf));
  } else {




   if (abs(rel_y) > abs(rel_x)) {
    buf[2] = (rel_y > 0) ? 0x7F : 0x80;
    buf[3] = 0;
    if (rel_y > 0)
     scancode = 0x01007f00;
    else
     scancode = 0x01008000;
   } else {
    buf[2] = 0;
    buf[3] = (rel_x > 0) ? 0x7F : 0x80;
    if (rel_x > 0)
     scancode = 0x0100007f;
    else
     scancode = 0x01000080;
   }
  }
 }

 if (scancode) {
  spin_lock_irqsave(&ictx->kc_lock, flags);
  ictx->kc = imon_remote_key_lookup(ictx, scancode);
  spin_unlock_irqrestore(&ictx->kc_lock, flags);
 }
}

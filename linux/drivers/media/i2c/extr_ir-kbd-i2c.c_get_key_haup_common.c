
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct IR_i2c {TYPE_1__* rc; int c; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int RC_PROTO_RC5 ;
 int RC_PROTO_RC6_6A_32 ;
 int RC_PROTO_RC6_MCE ;
 int RC_SCANCODE_RC5 (int,int) ;
 int RC_SCANCODE_RC6_6A (int,int,int) ;
 int dev_dbg (int *,char*,int,int,int,...) ;
 int get_unaligned_be16 (unsigned char*) ;
 int i2c_master_recv (int ,unsigned char*,int) ;

__attribute__((used)) static int get_key_haup_common(struct IR_i2c *ir, enum rc_proto *protocol,
          u32 *scancode, u8 *ptoggle, int size)
{
 unsigned char buf[6];
 int start, range, toggle, dev, code, ircode, vendor;


 if (size != i2c_master_recv(ir->c, buf, size))
  return -EIO;

 if (buf[0] & 0x80) {
  int offset = (size == 6) ? 3 : 0;


  start = (buf[offset] >> 7) & 1;
  range = (buf[offset] >> 6) & 1;
  toggle = (buf[offset] >> 5) & 1;
  dev = buf[offset] & 0x1f;
  code = (buf[offset+1] >> 2) & 0x3f;






  if (!start)

   return 0;


  ircode = (start << 12) | (toggle << 11) | (dev << 6) | code;
  if ((ircode & 0x1fff) == 0x1fff)
   return 0;

  if (!range)
   code += 64;

  dev_dbg(&ir->rc->dev,
   "ir hauppauge (rc5): s%d r%d t%d dev=%d code=%d\n",
   start, range, toggle, dev, code);

  *protocol = RC_PROTO_RC5;
  *scancode = RC_SCANCODE_RC5(dev, code);
  *ptoggle = toggle;

  return 1;
 } else if (size == 6 && (buf[0] & 0x40)) {
  code = buf[4];
  dev = buf[3];
  vendor = get_unaligned_be16(buf + 1);

  if (vendor == 0x800f) {
   *ptoggle = (dev & 0x80) != 0;
   *protocol = RC_PROTO_RC6_MCE;
   dev &= 0x7f;
   dev_dbg(&ir->rc->dev,
    "ir hauppauge (rc6-mce): t%d vendor=%d dev=%d code=%d\n",
    *ptoggle, vendor, dev, code);
  } else {
   *ptoggle = 0;
   *protocol = RC_PROTO_RC6_6A_32;
   dev_dbg(&ir->rc->dev,
    "ir hauppauge (rc6-6a-32): vendor=%d dev=%d code=%d\n",
    vendor, dev, code);
  }

  *scancode = RC_SCANCODE_RC6_6A(vendor, dev, code);

  return 1;
 }

 return 0;
}

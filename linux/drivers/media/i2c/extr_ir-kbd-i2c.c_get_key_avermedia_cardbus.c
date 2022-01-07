
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef unsigned char u32 ;
struct i2c_msg {int addr; unsigned char* buf; int len; int flags; } ;
struct IR_i2c {TYPE_2__* c; TYPE_1__* rc; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;
struct TYPE_4__ {int addr; int adapter; } ;
struct TYPE_3__ {int dev; } ;


 int EIO ;
 int I2C_M_RD ;
 int RC_PROTO_UNKNOWN ;
 int dev_dbg (int *,char*,...) ;
 int dev_warn (int *,char*,unsigned char,unsigned char) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int get_key_avermedia_cardbus(struct IR_i2c *ir, enum rc_proto *protocol,
         u32 *scancode, u8 *toggle)
{
 unsigned char subaddr, key, keygroup;
 struct i2c_msg msg[] = { { .addr = ir->c->addr, .flags = 0,
       .buf = &subaddr, .len = 1},
     { .addr = ir->c->addr, .flags = I2C_M_RD,
      .buf = &key, .len = 1} };
 subaddr = 0x0d;
 if (2 != i2c_transfer(ir->c->adapter, msg, 2)) {
  dev_dbg(&ir->rc->dev, "read error\n");
  return -EIO;
 }

 if (key == 0xff)
  return 0;

 subaddr = 0x0b;
 msg[1].buf = &keygroup;
 if (2 != i2c_transfer(ir->c->adapter, msg, 2)) {
  dev_dbg(&ir->rc->dev, "read error\n");
  return -EIO;
 }

 if (keygroup == 0xff)
  return 0;

 dev_dbg(&ir->rc->dev, "read key 0x%02x/0x%02x\n", key, keygroup);
 if (keygroup < 2 || keygroup > 4) {
  dev_warn(&ir->rc->dev, "warning: invalid key group 0x%02x for key 0x%02x\n",
    keygroup, key);
 }
 key |= (keygroup & 1) << 6;

 *protocol = RC_PROTO_UNKNOWN;
 *scancode = key;
 if (ir->c->addr == 0x41)
  *scancode |= keygroup << 8;
 *toggle = 0;
 return 1;
}

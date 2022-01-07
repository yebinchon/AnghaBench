
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct sfp {int i2c; } ;
struct i2c_msg {size_t addr; int len; size_t* buf; scalar_t__ flags; } ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 scalar_t__ I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int sfp_i2c_read(struct sfp *sfp, bool a2, u8 dev_addr, void *buf,
   size_t len)
{
 struct i2c_msg msgs[2];
 u8 bus_addr = a2 ? 0x51 : 0x50;
 size_t this_len;
 int ret;

 msgs[0].addr = bus_addr;
 msgs[0].flags = 0;
 msgs[0].len = 1;
 msgs[0].buf = &dev_addr;
 msgs[1].addr = bus_addr;
 msgs[1].flags = I2C_M_RD;
 msgs[1].len = len;
 msgs[1].buf = buf;

 while (len) {
  this_len = len;
  if (this_len > 16)
   this_len = 16;

  msgs[1].len = this_len;

  ret = i2c_transfer(sfp->i2c, msgs, ARRAY_SIZE(msgs));
  if (ret < 0)
   return ret;

  if (ret != ARRAY_SIZE(msgs))
   break;

  msgs[1].buf += this_len;
  dev_addr += this_len;
  len -= this_len;
 }

 return msgs[1].buf - (u8 *)buf;
}

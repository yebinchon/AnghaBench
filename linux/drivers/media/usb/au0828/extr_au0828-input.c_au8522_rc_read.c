
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct i2c_msg {char* buf; int len; int flags; int addr; } ;
struct au0828_rc {TYPE_2__* dev; int i2c_dev_addr; } ;
struct TYPE_3__ {int adapter; } ;
struct TYPE_4__ {TYPE_1__ i2c_client; } ;


 int EIO ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int au8522_rc_read(struct au0828_rc *ir, u16 reg, int val,
     char *buf, int size)
{
 int rc;
 char obuf[3];
 struct i2c_msg msg[2] = { { .addr = ir->i2c_dev_addr, .flags = 0,
        .buf = obuf, .len = 2 },
      { .addr = ir->i2c_dev_addr, .flags = I2C_M_RD,
        .buf = buf, .len = size } };

 obuf[0] = 0x40 | reg >> 8;
 obuf[1] = reg & 0xff;
 if (val >= 0) {
  obuf[2] = val;
  msg[0].len++;
 }

 rc = i2c_transfer(ir->dev->i2c_client.adapter, msg, 2);

 if (rc < 0)
  return rc;

 return (rc == 2) ? 0 : -EIO;
}

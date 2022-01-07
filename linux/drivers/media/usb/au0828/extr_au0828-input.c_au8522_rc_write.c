
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i2c_msg {char* buf; int len; int flags; int addr; } ;
struct au0828_rc {TYPE_2__* dev; int i2c_dev_addr; } ;
typedef int buf ;
struct TYPE_3__ {int adapter; } ;
struct TYPE_4__ {TYPE_1__ i2c_client; } ;


 int EIO ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int au8522_rc_write(struct au0828_rc *ir, u16 reg, u8 data)
{
 int rc;
 char buf[] = { (reg >> 8) | 0x80, reg & 0xff, data };
 struct i2c_msg msg = { .addr = ir->i2c_dev_addr, .flags = 0,
          .buf = buf, .len = sizeof(buf) };

 rc = i2c_transfer(ir->dev->i2c_client.adapter, &msg, 1);

 if (rc < 0)
  return rc;

 return (rc == 1) ? 0 : -EIO;
}

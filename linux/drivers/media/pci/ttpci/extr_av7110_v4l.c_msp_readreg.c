
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int len; int* buf; int addr; int flags; } ;
struct TYPE_2__ {int num; } ;
struct av7110 {int adac_type; TYPE_1__ dvb_adapter; int i2c_adap; } ;




 int EIO ;
 int I2C_M_RD ;
 int dprintk (int,char*,int ,int) ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;

__attribute__((used)) static int msp_readreg(struct av7110 *av7110, u8 dev, u16 reg, u16 *val)
{
 u8 msg1[3] = { dev, reg >> 8, reg & 0xff };
 u8 msg2[2];
 struct i2c_msg msgs[2] = {
  { .flags = 0 , .len = 3, .buf = msg1 },
  { .flags = I2C_M_RD, .len = 2, .buf = msg2 }
 };

 switch (av7110->adac_type) {
 case 129:
  msgs[0].addr = 0x40;
  msgs[1].addr = 0x40;
  break;
 case 128:
  msgs[0].addr = 0x42;
  msgs[1].addr = 0x42;
  break;
 default:
  return 0;
 }

 if (i2c_transfer(&av7110->i2c_adap, &msgs[0], 2) != 2) {
  dprintk(1, "dvb-ttpci: failed @ card %d, %u\n",
         av7110->dvb_adapter.num, reg);
  return -EIO;
 }
 *val = (msg2[0] << 8) | msg2[1];
 return 0;
}

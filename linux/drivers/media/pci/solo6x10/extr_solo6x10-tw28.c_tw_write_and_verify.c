
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct solo_dev {int dummy; } ;


 int SOLO_I2C_TW ;
 int msleep_interruptible (int) ;
 scalar_t__ solo_i2c_readbyte (struct solo_dev*,int ,scalar_t__,scalar_t__) ;
 int solo_i2c_writebyte (struct solo_dev*,int ,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void tw_write_and_verify(struct solo_dev *solo_dev, u8 addr, u8 off,
    u8 val)
{
 int i;

 for (i = 0; i < 5; i++) {
  u8 rval = solo_i2c_readbyte(solo_dev, SOLO_I2C_TW, addr, off);

  if (rval == val)
   return;

  solo_i2c_writebyte(solo_dev, SOLO_I2C_TW, addr, off, val);
  msleep_interruptible(1);
 }



}

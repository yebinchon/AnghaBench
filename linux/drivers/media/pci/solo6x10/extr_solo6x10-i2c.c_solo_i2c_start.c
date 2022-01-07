
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct solo_dev {int i2c_state; TYPE_1__* i2c_msg; } ;
struct TYPE_2__ {int addr; int flags; } ;


 int I2C_M_RD ;
 int IIC_STATE_START ;
 int SOLO_IIC_TXD ;
 int solo_i2c_flush (struct solo_dev*,int) ;
 int solo_reg_write (struct solo_dev*,int ,int) ;

__attribute__((used)) static void solo_i2c_start(struct solo_dev *solo_dev)
{
 u32 addr = solo_dev->i2c_msg->addr << 1;

 if (solo_dev->i2c_msg->flags & I2C_M_RD)
  addr |= 1;

 solo_dev->i2c_state = IIC_STATE_START;
 solo_reg_write(solo_dev, SOLO_IIC_TXD, addr);
 solo_i2c_flush(solo_dev, 1);
}

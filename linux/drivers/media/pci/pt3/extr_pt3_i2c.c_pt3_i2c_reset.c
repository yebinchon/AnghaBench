
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt3_board {scalar_t__* regs; } ;


 int PT3_I2C_RESET ;
 scalar_t__ REG_I2C_W ;
 int iowrite32 (int ,scalar_t__) ;

void pt3_i2c_reset(struct pt3_board *pt3)
{
 iowrite32(PT3_I2C_RESET, pt3->regs[0] + REG_I2C_W);
}

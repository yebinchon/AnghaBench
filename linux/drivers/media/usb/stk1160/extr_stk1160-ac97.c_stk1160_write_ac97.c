
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct stk1160 {int dummy; } ;


 scalar_t__ STK1160_AC97CTL_0 ;
 scalar_t__ STK1160_AC97_ADDR ;
 scalar_t__ STK1160_AC97_CMD ;
 int stk1160_ac97_wait_transfer_complete (struct stk1160*) ;
 int stk1160_write_reg (struct stk1160*,scalar_t__,int) ;

__attribute__((used)) static void stk1160_write_ac97(struct stk1160 *dev, u16 reg, u16 value)
{

 stk1160_write_reg(dev, STK1160_AC97_ADDR, reg);


 stk1160_write_reg(dev, STK1160_AC97_CMD, value & 0xff);
 stk1160_write_reg(dev, STK1160_AC97_CMD + 1, (value & 0xff00) >> 8);


 stk1160_write_reg(dev, STK1160_AC97CTL_0, 0x8c);


 stk1160_ac97_wait_transfer_complete(dev);
}

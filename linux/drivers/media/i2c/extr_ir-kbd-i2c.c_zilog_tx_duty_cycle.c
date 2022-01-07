
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc_dev {struct IR_i2c* priv; } ;
struct IR_i2c {int duty_cycle; } ;



__attribute__((used)) static int zilog_tx_duty_cycle(struct rc_dev *dev, u32 duty_cycle)
{
 struct IR_i2c *ir = dev->priv;

 ir->duty_cycle = duty_cycle;

 return 0;
}

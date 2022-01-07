
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc_dev {struct IR_i2c* priv; } ;
struct IR_i2c {int carrier; } ;


 int EINVAL ;

__attribute__((used)) static int zilog_tx_carrier(struct rc_dev *dev, u32 carrier)
{
 struct IR_i2c *ir = dev->priv;

 if (carrier > 500000 || carrier < 20000)
  return -EINVAL;

 ir->carrier = carrier;

 return 0;
}

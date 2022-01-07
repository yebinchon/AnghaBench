
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct IR_i2c* priv; } ;
struct IR_i2c {int work; } ;


 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int ir_open(struct rc_dev *dev)
{
 struct IR_i2c *ir = dev->priv;

 schedule_delayed_work(&ir->work, 0);

 return 0;
}

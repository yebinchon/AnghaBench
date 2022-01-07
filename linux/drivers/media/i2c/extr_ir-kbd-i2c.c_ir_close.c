
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct IR_i2c* priv; } ;
struct IR_i2c {int work; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void ir_close(struct rc_dev *dev)
{
 struct IR_i2c *ir = dev->priv;

 cancel_delayed_work_sync(&ir->work);
}

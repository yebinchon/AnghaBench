
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc_dev {struct pwm_ir* priv; } ;
struct pwm_ir {int duty_cycle; } ;



__attribute__((used)) static int pwm_ir_set_duty_cycle(struct rc_dev *dev, u32 duty_cycle)
{
 struct pwm_ir *pwm_ir = dev->priv;

 pwm_ir->duty_cycle = duty_cycle;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc_dev {struct ir_rx51* priv; } ;
struct ir_rx51 {int duty_cycle; } ;



__attribute__((used)) static int ir_rx51_set_duty_cycle(struct rc_dev *dev, u32 duty)
{
 struct ir_rx51 *ir_rx51 = dev->priv;

 ir_rx51->duty_cycle = duty;

 return 0;
}

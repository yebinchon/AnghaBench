
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct ir_rx51* priv; } ;
struct ir_rx51 {int device_is_open; int pwm; int timer; } ;


 int clear_bit (int,int *) ;
 int hrtimer_cancel (int *) ;
 int ir_rx51_off (struct ir_rx51*) ;
 int pwm_put (int ) ;

__attribute__((used)) static void ir_rx51_release(struct rc_dev *dev)
{
 struct ir_rx51 *ir_rx51 = dev->priv;

 hrtimer_cancel(&ir_rx51->timer);
 ir_rx51_off(ir_rx51);
 pwm_put(ir_rx51->pwm);

 clear_bit(1, &ir_rx51->device_is_open);
}

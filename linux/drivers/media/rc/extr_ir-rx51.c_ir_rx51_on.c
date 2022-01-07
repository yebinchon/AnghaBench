
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ir_rx51 {int pwm; } ;


 int pwm_enable (int ) ;

__attribute__((used)) static inline void ir_rx51_on(struct ir_rx51 *ir_rx51)
{
 pwm_enable(ir_rx51->pwm);
}

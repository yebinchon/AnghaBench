
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kvaser_pciefd_can {int lock; scalar_t__ reg_base; TYPE_1__* kv_pcie; } ;
struct TYPE_2__ {int bus_freq; } ;


 scalar_t__ KVASER_PCIEFD_KCAN_PWM_REG ;
 int KVASER_PCIEFD_KCAN_PWM_TOP_SHIFT ;
 int iowrite32 (int,scalar_t__) ;
 int kvaser_pciefd_pwm_stop (struct kvaser_pciefd_can*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void kvaser_pciefd_pwm_start(struct kvaser_pciefd_can *can)
{
 int top, trigger;
 u32 pwm_ctrl;
 unsigned long irq;

 kvaser_pciefd_pwm_stop(can);
 spin_lock_irqsave(&can->lock, irq);


 top = can->kv_pcie->bus_freq / (2 * 500000) - 1;

 pwm_ctrl = top & 0xff;
 pwm_ctrl |= (top & 0xff) << KVASER_PCIEFD_KCAN_PWM_TOP_SHIFT;
 iowrite32(pwm_ctrl, can->reg_base + KVASER_PCIEFD_KCAN_PWM_REG);


 trigger = (100 * top - 95 * (top + 1) + 50) / 100;
 pwm_ctrl = trigger & 0xff;
 pwm_ctrl |= (top & 0xff) << KVASER_PCIEFD_KCAN_PWM_TOP_SHIFT;
 iowrite32(pwm_ctrl, can->reg_base + KVASER_PCIEFD_KCAN_PWM_REG);
 spin_unlock_irqrestore(&can->lock, irq);
}

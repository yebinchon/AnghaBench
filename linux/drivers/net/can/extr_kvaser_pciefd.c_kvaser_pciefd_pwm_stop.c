
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct kvaser_pciefd_can {int lock; scalar_t__ reg_base; } ;


 scalar_t__ KVASER_PCIEFD_KCAN_PWM_REG ;
 int KVASER_PCIEFD_KCAN_PWM_TOP_SHIFT ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void kvaser_pciefd_pwm_stop(struct kvaser_pciefd_can *can)
{
 u8 top;
 u32 pwm_ctrl;
 unsigned long irq;

 spin_lock_irqsave(&can->lock, irq);
 pwm_ctrl = ioread32(can->reg_base + KVASER_PCIEFD_KCAN_PWM_REG);
 top = (pwm_ctrl >> KVASER_PCIEFD_KCAN_PWM_TOP_SHIFT) & 0xff;


 pwm_ctrl |= top;
 iowrite32(pwm_ctrl, can->reg_base + KVASER_PCIEFD_KCAN_PWM_REG);
 spin_unlock_irqrestore(&can->lock, irq);
}

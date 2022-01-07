
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvaser_pciefd_can {int lock; scalar_t__ reg_base; } ;


 int KVASER_PCIEFD_KCAN_MODE_EPEN ;
 scalar_t__ KVASER_PCIEFD_KCAN_MODE_REG ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void kvaser_pciefd_disable_err_gen(struct kvaser_pciefd_can *can)
{
 u32 mode;
 unsigned long irq;

 spin_lock_irqsave(&can->lock, irq);
 mode = ioread32(can->reg_base + KVASER_PCIEFD_KCAN_MODE_REG);
 mode &= ~KVASER_PCIEFD_KCAN_MODE_EPEN;
 iowrite32(mode, can->reg_base + KVASER_PCIEFD_KCAN_MODE_REG);
 spin_unlock_irqrestore(&can->lock, irq);
}

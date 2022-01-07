
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvaser_pciefd_can {int cmd_seq; int lock; scalar_t__ reg_base; } ;


 int KVASER_PCIEFD_KCAN_CMD_AT ;
 scalar_t__ KVASER_PCIEFD_KCAN_CMD_REG ;
 int KVASER_PCIEFD_KCAN_CMD_SEQ_SHIFT ;
 scalar_t__ KVASER_PCIEFD_KCAN_IEN_REG ;
 int KVASER_PCIEFD_KCAN_IRQ_ABD ;
 scalar_t__ KVASER_PCIEFD_KCAN_IRQ_REG ;
 int KVASER_PCIEFD_KCAN_IRQ_TFD ;
 scalar_t__ KVASER_PCIEFD_KCAN_MODE_REG ;
 int KVASER_PCIEFD_KCAN_MODE_RM ;
 int KVASER_PCIEFD_KCAN_STAT_IDLE ;
 scalar_t__ KVASER_PCIEFD_KCAN_STAT_REG ;
 int KVASER_PCIEFD_KCAN_STAT_RMR ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void kvaser_pciefd_start_controller_flush(struct kvaser_pciefd_can *can)
{
 u32 status;
 unsigned long irq;

 spin_lock_irqsave(&can->lock, irq);
 iowrite32(-1, can->reg_base + KVASER_PCIEFD_KCAN_IRQ_REG);
 iowrite32(KVASER_PCIEFD_KCAN_IRQ_ABD | KVASER_PCIEFD_KCAN_IRQ_TFD,
    can->reg_base + KVASER_PCIEFD_KCAN_IEN_REG);

 status = ioread32(can->reg_base + KVASER_PCIEFD_KCAN_STAT_REG);
 if (status & KVASER_PCIEFD_KCAN_STAT_IDLE) {
  u32 cmd;


  cmd = KVASER_PCIEFD_KCAN_CMD_AT;
  cmd |= ++can->cmd_seq << KVASER_PCIEFD_KCAN_CMD_SEQ_SHIFT;
  iowrite32(cmd, can->reg_base + KVASER_PCIEFD_KCAN_CMD_REG);
 } else if (!(status & KVASER_PCIEFD_KCAN_STAT_RMR)) {
  u32 mode;


  mode = ioread32(can->reg_base + KVASER_PCIEFD_KCAN_MODE_REG);
  mode |= KVASER_PCIEFD_KCAN_MODE_RM;
  iowrite32(mode, can->reg_base + KVASER_PCIEFD_KCAN_MODE_REG);
 }

 spin_unlock_irqrestore(&can->lock, irq);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ctrlmode; } ;
struct kvaser_pciefd_can {int lock; scalar_t__ reg_base; TYPE_1__ can; } ;


 int CAN_CTRLMODE_FD ;
 int CAN_CTRLMODE_FD_NON_ISO ;
 int CAN_CTRLMODE_LISTENONLY ;
 int KVASER_PCIEFD_KCAN_MODE_APT ;
 int KVASER_PCIEFD_KCAN_MODE_CCM ;
 int KVASER_PCIEFD_KCAN_MODE_EEN ;
 int KVASER_PCIEFD_KCAN_MODE_EPEN ;
 int KVASER_PCIEFD_KCAN_MODE_LOM ;
 int KVASER_PCIEFD_KCAN_MODE_NIFDEN ;
 scalar_t__ KVASER_PCIEFD_KCAN_MODE_REG ;
 int KVASER_PCIEFD_KCAN_MODE_RM ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void kvaser_pciefd_setup_controller(struct kvaser_pciefd_can *can)
{
 u32 mode;
 unsigned long irq;

 spin_lock_irqsave(&can->lock, irq);

 mode = ioread32(can->reg_base + KVASER_PCIEFD_KCAN_MODE_REG);
 if (can->can.ctrlmode & CAN_CTRLMODE_FD) {
  mode &= ~KVASER_PCIEFD_KCAN_MODE_CCM;
  if (can->can.ctrlmode & CAN_CTRLMODE_FD_NON_ISO)
   mode |= KVASER_PCIEFD_KCAN_MODE_NIFDEN;
  else
   mode &= ~KVASER_PCIEFD_KCAN_MODE_NIFDEN;
 } else {
  mode |= KVASER_PCIEFD_KCAN_MODE_CCM;
  mode &= ~KVASER_PCIEFD_KCAN_MODE_NIFDEN;
 }

 if (can->can.ctrlmode & CAN_CTRLMODE_LISTENONLY)
  mode |= KVASER_PCIEFD_KCAN_MODE_LOM;

 mode |= KVASER_PCIEFD_KCAN_MODE_EEN;
 mode |= KVASER_PCIEFD_KCAN_MODE_EPEN;

 mode &= ~KVASER_PCIEFD_KCAN_MODE_APT;
 mode &= ~KVASER_PCIEFD_KCAN_MODE_RM;
 iowrite32(mode, can->reg_base + KVASER_PCIEFD_KCAN_MODE_REG);

 spin_unlock_irqrestore(&can->lock, irq);
}

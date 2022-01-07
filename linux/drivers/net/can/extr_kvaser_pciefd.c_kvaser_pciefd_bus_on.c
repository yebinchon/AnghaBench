
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ rxerr; scalar_t__ txerr; } ;
struct TYPE_3__ {int dev; int state; } ;
struct kvaser_pciefd_can {scalar_t__ err_rep_cnt; TYPE_2__ bec; TYPE_1__ can; scalar_t__ reg_base; int start_comp; int lock; int flush_comp; int bec_poll_timer; } ;


 int CAN_STATE_ERROR_ACTIVE ;
 int ETIMEDOUT ;
 scalar_t__ KVASER_PCIEFD_KCAN_IEN_REG ;
 int KVASER_PCIEFD_KCAN_IRQ_ABD ;
 scalar_t__ KVASER_PCIEFD_KCAN_IRQ_REG ;
 int KVASER_PCIEFD_KCAN_IRQ_TFD ;
 scalar_t__ KVASER_PCIEFD_KCAN_MODE_REG ;
 int KVASER_PCIEFD_KCAN_MODE_RM ;
 int KVASER_PCIEFD_WAIT_TIMEOUT ;
 int completion_done (int *) ;
 int del_timer (int *) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int kvaser_pciefd_set_tx_irq (struct kvaser_pciefd_can*) ;
 int kvaser_pciefd_setup_controller (struct kvaser_pciefd_can*) ;
 int kvaser_pciefd_start_controller_flush (struct kvaser_pciefd_can*) ;
 int netdev_err (int ,char*) ;
 int netif_wake_queue (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int kvaser_pciefd_bus_on(struct kvaser_pciefd_can *can)
{
 u32 mode;
 unsigned long irq;

 del_timer(&can->bec_poll_timer);

 if (!completion_done(&can->flush_comp))
  kvaser_pciefd_start_controller_flush(can);

 if (!wait_for_completion_timeout(&can->flush_comp,
      KVASER_PCIEFD_WAIT_TIMEOUT)) {
  netdev_err(can->can.dev, "Timeout during bus on flush\n");
  return -ETIMEDOUT;
 }

 spin_lock_irqsave(&can->lock, irq);
 iowrite32(0, can->reg_base + KVASER_PCIEFD_KCAN_IEN_REG);
 iowrite32(-1, can->reg_base + KVASER_PCIEFD_KCAN_IRQ_REG);

 iowrite32(KVASER_PCIEFD_KCAN_IRQ_ABD | KVASER_PCIEFD_KCAN_IRQ_TFD,
    can->reg_base + KVASER_PCIEFD_KCAN_IEN_REG);

 mode = ioread32(can->reg_base + KVASER_PCIEFD_KCAN_MODE_REG);
 mode &= ~KVASER_PCIEFD_KCAN_MODE_RM;
 iowrite32(mode, can->reg_base + KVASER_PCIEFD_KCAN_MODE_REG);
 spin_unlock_irqrestore(&can->lock, irq);

 if (!wait_for_completion_timeout(&can->start_comp,
      KVASER_PCIEFD_WAIT_TIMEOUT)) {
  netdev_err(can->can.dev, "Timeout during bus on reset\n");
  return -ETIMEDOUT;
 }

 iowrite32(0, can->reg_base + KVASER_PCIEFD_KCAN_IEN_REG);
 iowrite32(-1, can->reg_base + KVASER_PCIEFD_KCAN_IRQ_REG);

 kvaser_pciefd_set_tx_irq(can);
 kvaser_pciefd_setup_controller(can);

 can->can.state = CAN_STATE_ERROR_ACTIVE;
 netif_wake_queue(can->can.dev);
 can->bec.txerr = 0;
 can->bec.rxerr = 0;
 can->err_rep_cnt = 0;

 return 0;
}

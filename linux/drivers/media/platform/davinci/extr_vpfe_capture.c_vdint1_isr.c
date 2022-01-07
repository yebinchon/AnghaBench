
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ field; } ;
struct TYPE_6__ {TYPE_1__ pix; } ;
struct TYPE_7__ {TYPE_2__ fmt; } ;
struct vpfe_device {scalar_t__ cur_frm; scalar_t__ next_frm; TYPE_4__* cfg; int dma_queue_lock; int dma_queue; TYPE_3__ fmt; int started; int v4l2_dev; } ;
typedef int irqreturn_t ;
struct TYPE_8__ {int (* clr_intr ) (int) ;} ;


 int IRQ_HANDLED ;
 scalar_t__ V4L2_FIELD_NONE ;
 int debug ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (int) ;
 int stub2 (int) ;
 int v4l2_dbg (int,int ,int *,char*) ;
 int vpfe_schedule_next_buffer (struct vpfe_device*) ;

__attribute__((used)) static irqreturn_t vdint1_isr(int irq, void *dev_id)
{
 struct vpfe_device *vpfe_dev = dev_id;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "\nInside vdint1_isr...\n");


 if (!vpfe_dev->started) {
  if (vpfe_dev->cfg->clr_intr)
   vpfe_dev->cfg->clr_intr(irq);
  return IRQ_HANDLED;
 }

 spin_lock(&vpfe_dev->dma_queue_lock);
 if ((vpfe_dev->fmt.fmt.pix.field == V4L2_FIELD_NONE) &&
     !list_empty(&vpfe_dev->dma_queue) &&
     vpfe_dev->cur_frm == vpfe_dev->next_frm)
  vpfe_schedule_next_buffer(vpfe_dev);
 spin_unlock(&vpfe_dev->dma_queue_lock);

 if (vpfe_dev->cfg->clr_intr)
  vpfe_dev->cfg->clr_intr(irq);

 return IRQ_HANDLED;
}

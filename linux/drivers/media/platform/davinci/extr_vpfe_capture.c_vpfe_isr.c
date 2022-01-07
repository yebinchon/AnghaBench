
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int field; } ;
struct TYPE_8__ {TYPE_1__ pix; } ;
struct TYPE_9__ {TYPE_2__ fmt; } ;
struct vpfe_device {scalar_t__ cur_frm; scalar_t__ next_frm; int field_id; TYPE_5__* cfg; int dma_queue_lock; int dma_queue; int v4l2_dev; int started; TYPE_3__ fmt; } ;
typedef int irqreturn_t ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_10__ {int (* getfid ) () ;int (* reset ) () ;} ;
struct TYPE_12__ {TYPE_4__ hw_ops; } ;
struct TYPE_11__ {int (* clr_intr ) (int) ;} ;


 int IRQ_HANDLED ;
 int V4L2_FIELD_NONE ;
 int V4L2_FIELD_SEQ_TB ;
 TYPE_6__* ccdc_dev ;
 int debug ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 () ;
 int stub2 () ;
 int stub3 (int) ;
 int v4l2_dbg (int,int ,int *,char*,...) ;
 int vpfe_process_buffer_complete (struct vpfe_device*) ;
 int vpfe_schedule_bottom_field (struct vpfe_device*) ;
 int vpfe_schedule_next_buffer (struct vpfe_device*) ;

__attribute__((used)) static irqreturn_t vpfe_isr(int irq, void *dev_id)
{
 struct vpfe_device *vpfe_dev = dev_id;
 enum v4l2_field field;
 int fid;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "\nStarting vpfe_isr...\n");
 field = vpfe_dev->fmt.fmt.pix.field;


 if (!vpfe_dev->started)
  goto clear_intr;


 if (ccdc_dev->hw_ops.reset)
  ccdc_dev->hw_ops.reset();

 if (field == V4L2_FIELD_NONE) {

  v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev,
   "frame format is progressive...\n");
  if (vpfe_dev->cur_frm != vpfe_dev->next_frm)
   vpfe_process_buffer_complete(vpfe_dev);
  goto clear_intr;
 }


 fid = ccdc_dev->hw_ops.getfid();


 vpfe_dev->field_id ^= 1;
 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "field id = %x:%x.\n",
  fid, vpfe_dev->field_id);
 if (fid == vpfe_dev->field_id) {

  if (fid == 0) {




   if (vpfe_dev->cur_frm != vpfe_dev->next_frm)
    vpfe_process_buffer_complete(vpfe_dev);





   if (field == V4L2_FIELD_SEQ_TB)
    vpfe_schedule_bottom_field(vpfe_dev);
   goto clear_intr;
  }






  spin_lock(&vpfe_dev->dma_queue_lock);
  if (!list_empty(&vpfe_dev->dma_queue) &&
      vpfe_dev->cur_frm == vpfe_dev->next_frm)
   vpfe_schedule_next_buffer(vpfe_dev);
  spin_unlock(&vpfe_dev->dma_queue_lock);
 } else if (fid == 0) {




  vpfe_dev->field_id = fid;
 }
clear_intr:
 if (vpfe_dev->cfg->clr_intr)
  vpfe_dev->cfg->clr_intr(irq);

 return IRQ_HANDLED;
}

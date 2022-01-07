
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int field; } ;
struct TYPE_5__ {TYPE_1__ pix; } ;
struct TYPE_6__ {TYPE_2__ fmt; } ;
struct vpfe_device {scalar_t__ cur_frm; scalar_t__ next_frm; int field; int ccdc; int dma_queue_lock; int dma_queue; TYPE_3__ fmt; } ;
typedef int irqreturn_t ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;


 int IRQ_HANDLED ;
 int V4L2_FIELD_NONE ;
 int V4L2_FIELD_SEQ_TB ;
 int VPFE_IRQ_STS ;
 int VPFE_VDINT0 ;
 int VPFE_VDINT1 ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vpfe_ccdc_getfid (int *) ;
 int vpfe_clear_intr (int *,int) ;
 int vpfe_process_buffer_complete (struct vpfe_device*) ;
 int vpfe_reg_read (int *,int ) ;
 int vpfe_schedule_bottom_field (struct vpfe_device*) ;
 int vpfe_schedule_next_buffer (struct vpfe_device*) ;

__attribute__((used)) static irqreturn_t vpfe_isr(int irq, void *dev)
{
 struct vpfe_device *vpfe = (struct vpfe_device *)dev;
 enum v4l2_field field;
 int intr_status;
 int fid;

 intr_status = vpfe_reg_read(&vpfe->ccdc, VPFE_IRQ_STS);

 if (intr_status & VPFE_VDINT0) {
  field = vpfe->fmt.fmt.pix.field;

  if (field == V4L2_FIELD_NONE) {

   if (vpfe->cur_frm != vpfe->next_frm)
    vpfe_process_buffer_complete(vpfe);
   goto next_intr;
  }



  fid = vpfe_ccdc_getfid(&vpfe->ccdc);


  vpfe->field ^= 1;
  if (fid == vpfe->field) {

   if (fid == 0) {





    if (vpfe->cur_frm != vpfe->next_frm)
     vpfe_process_buffer_complete(vpfe);





    if (field == V4L2_FIELD_SEQ_TB)
     vpfe_schedule_bottom_field(vpfe);

    goto next_intr;
   }






   spin_lock(&vpfe->dma_queue_lock);
   if (!list_empty(&vpfe->dma_queue) &&
       vpfe->cur_frm == vpfe->next_frm)
    vpfe_schedule_next_buffer(vpfe);
   spin_unlock(&vpfe->dma_queue_lock);
  } else if (fid == 0) {




   vpfe->field = fid;
  }
 }

next_intr:
 if (intr_status & VPFE_VDINT1) {
  spin_lock(&vpfe->dma_queue_lock);
  if (vpfe->fmt.fmt.pix.field == V4L2_FIELD_NONE &&
      !list_empty(&vpfe->dma_queue) &&
      vpfe->cur_frm == vpfe->next_frm)
   vpfe_schedule_next_buffer(vpfe);
  spin_unlock(&vpfe->dma_queue_lock);
 }

 vpfe_clear_intr(&vpfe->ccdc, intr_status);

 return IRQ_HANDLED;
}

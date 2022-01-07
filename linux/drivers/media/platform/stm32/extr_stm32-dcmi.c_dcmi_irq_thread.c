
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_dcmi {int misr; scalar_t__ overrun_count; int irqlock; TYPE_1__* sd_format; int errors_count; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ fourcc; } ;


 int IRQ_HANDLED ;
 int IT_ERR ;
 int IT_FRAME ;
 int IT_OVR ;
 scalar_t__ OVERRUN_ERROR_THRESHOLD ;
 scalar_t__ V4L2_PIX_FMT_JPEG ;
 int dcmi_process_jpeg (struct stm32_dcmi*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static irqreturn_t dcmi_irq_thread(int irq, void *arg)
{
 struct stm32_dcmi *dcmi = arg;

 spin_lock_irq(&dcmi->irqlock);

 if (dcmi->misr & IT_OVR) {
  dcmi->overrun_count++;
  if (dcmi->overrun_count > OVERRUN_ERROR_THRESHOLD)
   dcmi->errors_count++;
 }
 if (dcmi->misr & IT_ERR)
  dcmi->errors_count++;

 if (dcmi->sd_format->fourcc == V4L2_PIX_FMT_JPEG &&
     dcmi->misr & IT_FRAME) {

  spin_unlock_irq(&dcmi->irqlock);
  dcmi_process_jpeg(dcmi);
  return IRQ_HANDLED;
 }

 spin_unlock_irq(&dcmi->irqlock);
 return IRQ_HANDLED;
}

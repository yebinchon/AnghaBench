
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isp_pipeline {int frame_number; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_3__ {int entity; } ;
struct isp_ccdc_device {scalar_t__ state; int output; int lock; int shadow_update; TYPE_2__ lsc; scalar_t__ bt656; TYPE_1__ subdev; } ;


 int CCDC_EVENT_VD0 ;
 int CCDC_EVENT_VD1 ;
 int CCDC_OUTPUT_MEMORY ;
 scalar_t__ ISP_PIPELINE_STREAM_CONTINUOUS ;
 scalar_t__ LSC_STATE_STOPPED ;
 int __ccdc_enable (struct isp_ccdc_device*,int ) ;
 int __ccdc_lsc_enable (struct isp_ccdc_device*,int ) ;
 int atomic_inc (int *) ;
 int ccdc_apply_controls (struct isp_ccdc_device*) ;
 int ccdc_enable (struct isp_ccdc_device*) ;
 scalar_t__ ccdc_handle_stopping (struct isp_ccdc_device*,int ) ;
 int ccdc_isr_buffer (struct isp_ccdc_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct isp_pipeline* to_isp_pipeline (int *) ;

__attribute__((used)) static void ccdc_vd0_isr(struct isp_ccdc_device *ccdc)
{
 unsigned long flags;
 int restart = 0;




 if (ccdc->bt656) {
  struct isp_pipeline *pipe =
   to_isp_pipeline(&ccdc->subdev.entity);

  atomic_inc(&pipe->frame_number);
 }





 if (ccdc->bt656) {
  spin_lock_irqsave(&ccdc->lock, flags);
  if (ccdc->state == ISP_PIPELINE_STREAM_CONTINUOUS &&
      ccdc->output & CCDC_OUTPUT_MEMORY) {
   if (ccdc->lsc.state != LSC_STATE_STOPPED)
    __ccdc_lsc_enable(ccdc, 0);
   __ccdc_enable(ccdc, 0);
  }
  ccdc_handle_stopping(ccdc, CCDC_EVENT_VD1);
  spin_unlock_irqrestore(&ccdc->lock, flags);
 }

 if (ccdc->output & CCDC_OUTPUT_MEMORY)
  restart = ccdc_isr_buffer(ccdc);

 spin_lock_irqsave(&ccdc->lock, flags);

 if (ccdc_handle_stopping(ccdc, CCDC_EVENT_VD0)) {
  spin_unlock_irqrestore(&ccdc->lock, flags);
  return;
 }

 if (!ccdc->shadow_update)
  ccdc_apply_controls(ccdc);
 spin_unlock_irqrestore(&ccdc->lock, flags);

 if (restart)
  ccdc_enable(ccdc);
}

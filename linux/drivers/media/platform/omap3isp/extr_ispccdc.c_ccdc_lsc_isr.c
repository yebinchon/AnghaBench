
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct isp_pipeline {int error; } ;
struct TYPE_4__ {scalar_t__ state; int req_lock; int * request; } ;
struct TYPE_3__ {int entity; } ;
struct isp_ccdc_device {TYPE_2__ lsc; TYPE_1__ subdev; } ;


 int CCDC_EVENT_LSC_DONE ;
 int IRQ0STATUS_CCDC_LSC_DONE_IRQ ;
 int IRQ0STATUS_CCDC_LSC_PREF_ERR_IRQ ;
 int IRQ0STATUS_HS_VS_IRQ ;
 scalar_t__ LSC_STATE_RECONFIG ;
 void* LSC_STATE_STOPPED ;
 scalar_t__ LSC_STATE_STOPPING ;
 scalar_t__ ccdc_handle_stopping (struct isp_ccdc_device*,int ) ;
 int ccdc_lsc_enable (struct isp_ccdc_device*) ;
 int ccdc_lsc_error_handler (struct isp_ccdc_device*) ;
 int dev_dbg (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int to_device (struct isp_ccdc_device*) ;
 struct isp_pipeline* to_isp_pipeline (int *) ;

__attribute__((used)) static void ccdc_lsc_isr(struct isp_ccdc_device *ccdc, u32 events)
{
 unsigned long flags;

 if (events & IRQ0STATUS_CCDC_LSC_PREF_ERR_IRQ) {
  struct isp_pipeline *pipe =
   to_isp_pipeline(&ccdc->subdev.entity);

  ccdc_lsc_error_handler(ccdc);
  pipe->error = 1;
  dev_dbg(to_device(ccdc), "lsc prefetch error\n");
 }

 if (!(events & IRQ0STATUS_CCDC_LSC_DONE_IRQ))
  return;





 spin_lock_irqsave(&ccdc->lsc.req_lock, flags);

 if (ccdc->lsc.state == LSC_STATE_STOPPING)
  ccdc->lsc.state = LSC_STATE_STOPPED;

 if (ccdc_handle_stopping(ccdc, CCDC_EVENT_LSC_DONE))
  goto done;

 if (ccdc->lsc.state != LSC_STATE_RECONFIG)
  goto done;


 ccdc->lsc.state = LSC_STATE_STOPPED;





 if (events & IRQ0STATUS_HS_VS_IRQ)
  goto done;




 if (ccdc->lsc.request == ((void*)0))
  goto done;

 ccdc_lsc_enable(ccdc);

done:
 spin_unlock_irqrestore(&ccdc->lsc.req_lock, flags);
}

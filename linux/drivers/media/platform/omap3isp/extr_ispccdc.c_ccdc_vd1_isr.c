
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; int req_lock; int * request; } ;
struct isp_ccdc_device {int state; int output; TYPE_1__ lsc; int stopping; scalar_t__ bt656; } ;


 int CCDC_EVENT_VD1 ;
 int CCDC_OUTPUT_MEMORY ;
 int CCDC_STOP_REQUEST ;



 scalar_t__ LSC_STATE_RECONFIG ;
 scalar_t__ LSC_STATE_RUNNING ;
 scalar_t__ LSC_STATE_STOPPED ;
 int __ccdc_enable (struct isp_ccdc_device*,int ) ;
 int __ccdc_lsc_enable (struct isp_ccdc_device*,int ) ;
 scalar_t__ ccdc_handle_stopping (struct isp_ccdc_device*,int ) ;
 int ccdc_lsc_enable (struct isp_ccdc_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ccdc_vd1_isr(struct isp_ccdc_device *ccdc)
{
 unsigned long flags;
 if (ccdc->bt656)
  return;

 spin_lock_irqsave(&ccdc->lsc.req_lock, flags);
 switch (ccdc->state) {
 case 129:
  ccdc->stopping = CCDC_STOP_REQUEST;
  break;

 case 130:
  if (ccdc->output & CCDC_OUTPUT_MEMORY) {
   if (ccdc->lsc.state != LSC_STATE_STOPPED)
    __ccdc_lsc_enable(ccdc, 0);
   __ccdc_enable(ccdc, 0);
  }
  break;

 case 128:
  break;
 }

 if (ccdc_handle_stopping(ccdc, CCDC_EVENT_VD1))
  goto done;

 if (ccdc->lsc.request == ((void*)0))
  goto done;





 if (ccdc->lsc.state == LSC_STATE_RUNNING) {
  __ccdc_lsc_enable(ccdc, 0);
  ccdc->lsc.state = LSC_STATE_RECONFIG;
  goto done;
 }


 if (ccdc->lsc.state == LSC_STATE_STOPPED)
  ccdc_lsc_enable(ccdc);

done:
 spin_unlock_irqrestore(&ccdc->lsc.req_lock, flags);
}

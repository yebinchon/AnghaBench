
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int free_queue; int table_work; int * active; int * request; } ;
struct isp_ccdc_device {scalar_t__ state; scalar_t__ stopping; int ioctl_lock; TYPE_1__ lsc; int wait; int lock; int running; } ;


 scalar_t__ CCDC_STOP_FINISHED ;
 scalar_t__ CCDC_STOP_NOT_REQUESTED ;
 scalar_t__ CCDC_STOP_REQUEST ;
 int ETIMEDOUT ;
 scalar_t__ ISP_PIPELINE_STREAM_CONTINUOUS ;
 int OMAP3_ISP_SBL_CCDC_LSC_READ ;
 int cancel_work_sync (int *) ;
 int ccdc_lsc_free_queue (struct isp_ccdc_device*,int *) ;
 int ccdc_lsc_free_request (struct isp_ccdc_device*,int *) ;
 int dev_warn (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int omap3isp_sbl_disable (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int to_device (struct isp_ccdc_device*) ;
 int to_isp_device (struct isp_ccdc_device*) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int ccdc_disable(struct isp_ccdc_device *ccdc)
{
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&ccdc->lock, flags);
 if (ccdc->state == ISP_PIPELINE_STREAM_CONTINUOUS)
  ccdc->stopping = CCDC_STOP_REQUEST;
 if (!ccdc->running)
  ccdc->stopping = CCDC_STOP_FINISHED;
 spin_unlock_irqrestore(&ccdc->lock, flags);

 ret = wait_event_timeout(ccdc->wait,
     ccdc->stopping == CCDC_STOP_FINISHED,
     msecs_to_jiffies(2000));
 if (ret == 0) {
  ret = -ETIMEDOUT;
  dev_warn(to_device(ccdc), "CCDC stop timeout!\n");
 }

 omap3isp_sbl_disable(to_isp_device(ccdc), OMAP3_ISP_SBL_CCDC_LSC_READ);

 mutex_lock(&ccdc->ioctl_lock);
 ccdc_lsc_free_request(ccdc, ccdc->lsc.request);
 ccdc->lsc.request = ccdc->lsc.active;
 ccdc->lsc.active = ((void*)0);
 cancel_work_sync(&ccdc->lsc.table_work);
 ccdc_lsc_free_queue(ccdc, &ccdc->lsc.free_queue);
 mutex_unlock(&ccdc->ioctl_lock);

 ccdc->stopping = CCDC_STOP_NOT_REQUESTED;

 return ret > 0 ? 0 : ret;
}

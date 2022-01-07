
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dcsubval; scalar_t__ oblen; } ;
struct TYPE_3__ {int req_lock; int free_queue; int state; int table_work; } ;
struct isp_ccdc_device {int ioctl_lock; int update; TYPE_2__ clamp; TYPE_1__ lsc; int stopping; int wait; int lock; } ;
struct isp_device {struct isp_ccdc_device isp_ccdc; } ;


 int CCDC_STOP_NOT_REQUESTED ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int LSC_STATE_STOPPED ;
 int OMAP3ISP_CCDC_BLCLAMP ;
 int ccdc_apply_controls (struct isp_ccdc_device*) ;
 int ccdc_init_entities (struct isp_ccdc_device*) ;
 int ccdc_lsc_free_table_work ;
 int init_waitqueue_head (int *) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

int omap3isp_ccdc_init(struct isp_device *isp)
{
 struct isp_ccdc_device *ccdc = &isp->isp_ccdc;
 int ret;

 spin_lock_init(&ccdc->lock);
 init_waitqueue_head(&ccdc->wait);
 mutex_init(&ccdc->ioctl_lock);

 ccdc->stopping = CCDC_STOP_NOT_REQUESTED;

 INIT_WORK(&ccdc->lsc.table_work, ccdc_lsc_free_table_work);
 ccdc->lsc.state = LSC_STATE_STOPPED;
 INIT_LIST_HEAD(&ccdc->lsc.free_queue);
 spin_lock_init(&ccdc->lsc.req_lock);

 ccdc->clamp.oblen = 0;
 ccdc->clamp.dcsubval = 0;

 ccdc->update = OMAP3ISP_CCDC_BLCLAMP;
 ccdc_apply_controls(ccdc);

 ret = ccdc_init_entities(ccdc);
 if (ret < 0) {
  mutex_destroy(&ccdc->ioctl_lock);
  return ret;
 }

 return 0;
}

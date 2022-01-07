
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ispccdc_lsc {scalar_t__ state; int table_work; int free_queue; TYPE_1__* request; TYPE_1__* active; } ;
struct isp_ccdc_device {struct ispccdc_lsc lsc; } ;
struct TYPE_2__ {int list; } ;


 int EINVAL ;
 scalar_t__ LSC_STATE_STOPPED ;
 int OMAP3_ISP_SBL_CCDC_LSC_READ ;
 scalar_t__ __ccdc_lsc_configure (struct isp_ccdc_device*,TYPE_1__*) ;
 int __ccdc_lsc_enable (struct isp_ccdc_device*,int) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int omap3isp_sbl_disable (int ,int ) ;
 int schedule_work (int *) ;
 int to_isp_device (struct isp_ccdc_device*) ;

__attribute__((used)) static int ccdc_lsc_enable(struct isp_ccdc_device *ccdc)
{
 struct ispccdc_lsc *lsc = &ccdc->lsc;

 if (lsc->state != LSC_STATE_STOPPED)
  return -EINVAL;

 if (lsc->active) {
  list_add_tail(&lsc->active->list, &lsc->free_queue);
  lsc->active = ((void*)0);
 }

 if (__ccdc_lsc_configure(ccdc, lsc->request) < 0) {
  omap3isp_sbl_disable(to_isp_device(ccdc),
    OMAP3_ISP_SBL_CCDC_LSC_READ);
  list_add_tail(&lsc->request->list, &lsc->free_queue);
  lsc->request = ((void*)0);
  goto done;
 }

 lsc->active = lsc->request;
 lsc->request = ((void*)0);
 __ccdc_lsc_enable(ccdc, 1);

done:
 if (!list_empty(&lsc->free_queue))
  schedule_work(&lsc->table_work);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf_err; } ;
struct isp_device {int dev; TYPE_1__ isp_hist; int isp_ccdc; } ;


 int atomic_set (int *,int) ;
 int dev_dbg (int ,char*) ;
 scalar_t__ omap3isp_ccdc_busy (int *) ;
 scalar_t__ omap3isp_stat_pcr_busy (TYPE_1__*) ;

void omap3isp_hist_dma_done(struct isp_device *isp)
{
 if (omap3isp_ccdc_busy(&isp->isp_ccdc) ||
     omap3isp_stat_pcr_busy(&isp->isp_hist)) {

  atomic_set(&isp->isp_hist.buf_err, 1);
  dev_dbg(isp->dev,
   "hist: Out of synchronization with CCDC. Ignoring next buffer.\n");
 }
}

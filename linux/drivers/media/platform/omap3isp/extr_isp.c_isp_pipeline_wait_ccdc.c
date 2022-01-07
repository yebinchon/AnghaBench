
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int isp_ccdc; int isp_hist; int isp_aewb; int isp_af; } ;


 scalar_t__ omap3isp_ccdc_busy (int *) ;
 scalar_t__ omap3isp_stat_busy (int *) ;

__attribute__((used)) static int isp_pipeline_wait_ccdc(struct isp_device *isp)
{
 return omap3isp_stat_busy(&isp->isp_af)
     || omap3isp_stat_busy(&isp->isp_aewb)
     || omap3isp_stat_busy(&isp->isp_hist)
     || omap3isp_ccdc_busy(&isp->isp_ccdc);
}

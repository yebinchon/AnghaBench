
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int isp_aewb; } ;


 int omap3isp_stat_cleanup (int *) ;

void omap3isp_h3a_aewb_cleanup(struct isp_device *isp)
{
 omap3isp_stat_cleanup(&isp->isp_aewb);
}

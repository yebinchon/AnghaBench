
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int dummy; } ;


 int omap3isp_ccdc_cleanup (struct isp_device*) ;
 int omap3isp_ccp2_cleanup (struct isp_device*) ;
 int omap3isp_csi2_cleanup (struct isp_device*) ;
 int omap3isp_csiphy_cleanup (struct isp_device*) ;
 int omap3isp_h3a_aewb_cleanup (struct isp_device*) ;
 int omap3isp_h3a_af_cleanup (struct isp_device*) ;
 int omap3isp_hist_cleanup (struct isp_device*) ;
 int omap3isp_preview_cleanup (struct isp_device*) ;
 int omap3isp_resizer_cleanup (struct isp_device*) ;

__attribute__((used)) static void isp_cleanup_modules(struct isp_device *isp)
{
 omap3isp_h3a_aewb_cleanup(isp);
 omap3isp_h3a_af_cleanup(isp);
 omap3isp_hist_cleanup(isp);
 omap3isp_resizer_cleanup(isp);
 omap3isp_preview_cleanup(isp);
 omap3isp_ccdc_cleanup(isp);
 omap3isp_ccp2_cleanup(isp);
 omap3isp_csi2_cleanup(isp);
 omap3isp_csiphy_cleanup(isp);
}

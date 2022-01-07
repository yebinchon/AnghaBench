
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_ccdc_device {int update; } ;
struct isp_device {struct isp_ccdc_device isp_ccdc; } ;


 int ISPCCDC_CFG ;
 int ISPCCDC_CFG_VDLC ;
 int OMAP3ISP_CCDC_ALAW ;
 int OMAP3ISP_CCDC_BCOMP ;
 int OMAP3ISP_CCDC_BLCLAMP ;
 int OMAP3ISP_CCDC_LPF ;
 int OMAP3_ISP_IOMEM_CCDC ;
 int ccdc_apply_controls (struct isp_ccdc_device*) ;
 int ccdc_configure_fpc (struct isp_ccdc_device*) ;
 int isp_reg_set (struct isp_device*,int ,int ,int ) ;

void omap3isp_ccdc_restore_context(struct isp_device *isp)
{
 struct isp_ccdc_device *ccdc = &isp->isp_ccdc;

 isp_reg_set(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_CFG, ISPCCDC_CFG_VDLC);

 ccdc->update = OMAP3ISP_CCDC_ALAW | OMAP3ISP_CCDC_LPF
       | OMAP3ISP_CCDC_BLCLAMP | OMAP3ISP_CCDC_BCOMP;
 ccdc_apply_controls(ccdc);
 ccdc_configure_fpc(ccdc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap3isp_prev_dcor {scalar_t__ couplet_mode_en; int * detect_correct; } ;
struct prev_params {struct omap3isp_prev_dcor dcor; } ;
struct isp_prev_device {int dummy; } ;
struct isp_device {int dummy; } ;


 int ISPPRV_CDC_THR0 ;
 int ISPPRV_CDC_THR1 ;
 int ISPPRV_CDC_THR2 ;
 int ISPPRV_CDC_THR3 ;
 int ISPPRV_PCR ;
 int ISPPRV_PCR_DCCOUP ;
 int OMAP3_ISP_IOMEM_PREV ;
 int isp_reg_clr_set (struct isp_device*,int ,int ,int ,int ) ;
 int isp_reg_writel (struct isp_device*,int ,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_prev_device*) ;

__attribute__((used)) static void
preview_config_dcor(struct isp_prev_device *prev,
      const struct prev_params *params)
{
 struct isp_device *isp = to_isp_device(prev);
 const struct omap3isp_prev_dcor *dcor = &params->dcor;

 isp_reg_writel(isp, dcor->detect_correct[0],
         OMAP3_ISP_IOMEM_PREV, ISPPRV_CDC_THR0);
 isp_reg_writel(isp, dcor->detect_correct[1],
         OMAP3_ISP_IOMEM_PREV, ISPPRV_CDC_THR1);
 isp_reg_writel(isp, dcor->detect_correct[2],
         OMAP3_ISP_IOMEM_PREV, ISPPRV_CDC_THR2);
 isp_reg_writel(isp, dcor->detect_correct[3],
         OMAP3_ISP_IOMEM_PREV, ISPPRV_CDC_THR3);
 isp_reg_clr_set(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
   ISPPRV_PCR_DCCOUP,
   dcor->couplet_mode_en ? ISPPRV_PCR_DCCOUP : 0);
}

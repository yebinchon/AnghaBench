
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct isp_device {int dummy; } ;
struct TYPE_2__ {int obgain; int oblen; int oblines; int obstpixel; int dcsubval; } ;
struct isp_ccdc_device {scalar_t__ obclamp; TYPE_1__ clamp; } ;


 int ISPCCDC_CLAMP ;
 int ISPCCDC_CLAMP_CLAMPEN ;
 int ISPCCDC_CLAMP_OBGAIN_SHIFT ;
 int ISPCCDC_CLAMP_OBSLEN_SHIFT ;
 int ISPCCDC_CLAMP_OBSLN_SHIFT ;
 int ISPCCDC_CLAMP_OBST_SHIFT ;
 int ISPCCDC_DCSUB ;
 int OMAP3_ISP_IOMEM_CCDC ;
 int isp_reg_clr_set (struct isp_device*,int ,int ,int ,int ) ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;

__attribute__((used)) static void ccdc_configure_clamp(struct isp_ccdc_device *ccdc)
{
 struct isp_device *isp = to_isp_device(ccdc);
 u32 clamp;

 if (ccdc->obclamp) {
  clamp = ccdc->clamp.obgain << ISPCCDC_CLAMP_OBGAIN_SHIFT;
  clamp |= ccdc->clamp.oblen << ISPCCDC_CLAMP_OBSLEN_SHIFT;
  clamp |= ccdc->clamp.oblines << ISPCCDC_CLAMP_OBSLN_SHIFT;
  clamp |= ccdc->clamp.obstpixel << ISPCCDC_CLAMP_OBST_SHIFT;
  isp_reg_writel(isp, clamp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_CLAMP);
 } else {
  isp_reg_writel(isp, ccdc->clamp.dcsubval,
          OMAP3_ISP_IOMEM_CCDC, ISPCCDC_DCSUB);
 }

 isp_reg_clr_set(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_CLAMP,
   ISPCCDC_CLAMP_CLAMPEN,
   ccdc->obclamp ? ISPCCDC_CLAMP_CLAMPEN : 0);
}

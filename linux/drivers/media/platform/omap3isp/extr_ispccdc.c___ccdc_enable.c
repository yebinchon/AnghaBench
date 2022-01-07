
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int dummy; } ;
struct isp_ccdc_device {int running; } ;


 int ISPCCDC_PCR ;
 int ISPCCDC_PCR_EN ;
 int OMAP3_ISP_IOMEM_CCDC ;
 int isp_reg_clr_set (struct isp_device*,int ,int ,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;

__attribute__((used)) static void __ccdc_enable(struct isp_ccdc_device *ccdc, int enable)
{
 struct isp_device *isp = to_isp_device(ccdc);

 isp_reg_clr_set(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_PCR,
   ISPCCDC_PCR_EN, enable ? ISPCCDC_PCR_EN : 0);

 ccdc->running = enable;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int dummy; } ;
struct isp_ccdc_device {int dummy; } ;


 int ISPCCDC_PCR ;
 int ISPCCDC_PCR_BUSY ;
 int OMAP3_ISP_IOMEM_CCDC ;
 int isp_reg_readl (struct isp_device*,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;

int omap3isp_ccdc_busy(struct isp_ccdc_device *ccdc)
{
 struct isp_device *isp = to_isp_device(ccdc);

 return isp_reg_readl(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_PCR) &
  ISPCCDC_PCR_BUSY;
}

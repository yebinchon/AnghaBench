
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp_device {int dummy; } ;
struct isp_ccdc_device {int dummy; } ;


 int ISPCCDC_SDR_ADDR ;
 int OMAP3_ISP_IOMEM_CCDC ;
 int isp_reg_writel (struct isp_device*,int ,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;

__attribute__((used)) static void ccdc_set_outaddr(struct isp_ccdc_device *ccdc, u32 addr)
{
 struct isp_device *isp = to_isp_device(ccdc);

 isp_reg_writel(isp, addr, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_SDR_ADDR);
}

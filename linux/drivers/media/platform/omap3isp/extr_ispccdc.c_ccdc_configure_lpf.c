
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int dummy; } ;
struct isp_ccdc_device {scalar_t__ lpf; } ;


 int ISPCCDC_SYN_MODE ;
 int ISPCCDC_SYN_MODE_LPF ;
 int OMAP3_ISP_IOMEM_CCDC ;
 int isp_reg_clr_set (struct isp_device*,int ,int ,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;

__attribute__((used)) static void ccdc_configure_lpf(struct isp_ccdc_device *ccdc)
{
 struct isp_device *isp = to_isp_device(ccdc);

 isp_reg_clr_set(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_SYN_MODE,
   ISPCCDC_SYN_MODE_LPF,
   ccdc->lpf ? ISPCCDC_SYN_MODE_LPF : 0);
}

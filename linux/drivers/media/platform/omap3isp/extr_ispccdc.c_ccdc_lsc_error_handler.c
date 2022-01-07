
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct isp_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct isp_ccdc_device {TYPE_1__ lsc; } ;


 int ISPCCDC_LSC_CONFIG ;
 int ISPCCDC_LSC_ENABLE ;
 int LSC_STATE_STOPPED ;
 int OMAP3_ISP_IOMEM_CCDC ;
 int isp_reg_clr (struct isp_device*,int ,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;

__attribute__((used)) static void ccdc_lsc_error_handler(struct isp_ccdc_device *ccdc)
{
 struct isp_device *isp = to_isp_device(ccdc);
 isp_reg_clr(isp, OMAP3_ISP_IOMEM_CCDC, ISPCCDC_LSC_CONFIG,
      ISPCCDC_LSC_ENABLE);
 ccdc->lsc.state = LSC_STATE_STOPPED;
}

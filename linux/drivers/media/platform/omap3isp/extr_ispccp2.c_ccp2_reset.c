
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int dev; } ;
struct isp_ccp2_device {int dummy; } ;


 int ISPCCP2_SYSCONFIG ;
 int ISPCCP2_SYSCONFIG_SOFT_RESET ;
 int ISPCCP2_SYSSTATUS ;
 int ISPCCP2_SYSSTATUS_RESET_DONE ;
 int OMAP3_ISP_IOMEM_CCP2 ;
 int dev_warn (int ,char*) ;
 int isp_reg_readl (struct isp_device*,int ,int ) ;
 int isp_reg_set (struct isp_device*,int ,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_ccp2_device*) ;
 int udelay (int) ;

__attribute__((used)) static void ccp2_reset(struct isp_ccp2_device *ccp2)
{
 struct isp_device *isp = to_isp_device(ccp2);
 int i = 0;


 isp_reg_set(isp, OMAP3_ISP_IOMEM_CCP2, ISPCCP2_SYSCONFIG,
      ISPCCP2_SYSCONFIG_SOFT_RESET);
 while (!(isp_reg_readl(isp, OMAP3_ISP_IOMEM_CCP2, ISPCCP2_SYSSTATUS) &
   ISPCCP2_SYSSTATUS_RESET_DONE)) {
  udelay(10);
  if (i++ > 10) {
   dev_warn(isp->dev,
    "omap3_isp: timeout waiting for ccp2 reset\n");
   break;
  }
 }
}

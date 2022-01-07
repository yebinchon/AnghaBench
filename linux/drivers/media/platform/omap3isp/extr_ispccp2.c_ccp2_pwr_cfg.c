
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {scalar_t__ revision; scalar_t__ autoidle; } ;
struct isp_ccp2_device {int dummy; } ;


 int ISPCCP2_SYSCONFIG ;
 int ISPCCP2_SYSCONFIG_AUTO_IDLE ;
 int ISPCCP2_SYSCONFIG_MSTANDBY_MODE_SMART ;
 scalar_t__ ISP_REVISION_15_0 ;
 int OMAP3_ISP_IOMEM_CCP2 ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;
 struct isp_device* to_isp_device (struct isp_ccp2_device*) ;

__attribute__((used)) static void ccp2_pwr_cfg(struct isp_ccp2_device *ccp2)
{
 struct isp_device *isp = to_isp_device(ccp2);

 isp_reg_writel(isp, ISPCCP2_SYSCONFIG_MSTANDBY_MODE_SMART |
   ((isp->revision == ISP_REVISION_15_0 && isp->autoidle) ?
     ISPCCP2_SYSCONFIG_AUTO_IDLE : 0),
         OMAP3_ISP_IOMEM_CCP2, ISPCCP2_SYSCONFIG);
}

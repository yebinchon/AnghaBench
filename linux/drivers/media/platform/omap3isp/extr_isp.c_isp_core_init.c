
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {scalar_t__ revision; scalar_t__ autoidle; } ;


 int ISPCTRL_SBL_AUTOIDLE ;
 int ISPCTRL_SYNC_DETECT_VSRISE ;
 int ISP_CTRL ;
 scalar_t__ ISP_REVISION_15_0 ;
 int ISP_SYSCONFIG ;
 int ISP_SYSCONFIG_AUTOIDLE ;
 int ISP_SYSCONFIG_MIDLEMODE_FORCESTANDBY ;
 int ISP_SYSCONFIG_MIDLEMODE_SHIFT ;
 int ISP_SYSCONFIG_MIDLEMODE_SMARTSTANDBY ;
 int OMAP3_ISP_IOMEM_MAIN ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;

__attribute__((used)) static void isp_core_init(struct isp_device *isp, int idle)
{
 isp_reg_writel(isp,
         ((idle ? ISP_SYSCONFIG_MIDLEMODE_SMARTSTANDBY :
    ISP_SYSCONFIG_MIDLEMODE_FORCESTANDBY) <<
   ISP_SYSCONFIG_MIDLEMODE_SHIFT) |
   ((isp->revision == ISP_REVISION_15_0) ?
     ISP_SYSCONFIG_AUTOIDLE : 0),
         OMAP3_ISP_IOMEM_MAIN, ISP_SYSCONFIG);

 isp_reg_writel(isp,
         (isp->autoidle ? ISPCTRL_SBL_AUTOIDLE : 0) |
         ISPCTRL_SYNC_DETECT_VSRISE,
         OMAP3_ISP_IOMEM_MAIN, ISP_CTRL);
}

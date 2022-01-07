
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int dummy; } ;


 int ISP_REVISION ;
 int OMAP3_ISP_IOMEM_MAIN ;
 int isp_reg_readl (struct isp_device*,int ,int ) ;
 int isp_reg_writel (struct isp_device*,int ,int ,int ) ;

void omap3isp_flush(struct isp_device *isp)
{
 isp_reg_writel(isp, 0, OMAP3_ISP_IOMEM_MAIN, ISP_REVISION);
 isp_reg_readl(isp, OMAP3_ISP_IOMEM_MAIN, ISP_REVISION);
}

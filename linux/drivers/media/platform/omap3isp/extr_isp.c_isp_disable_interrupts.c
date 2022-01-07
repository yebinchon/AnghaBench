
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int dummy; } ;


 int ISP_IRQ0ENABLE ;
 int OMAP3_ISP_IOMEM_MAIN ;
 int isp_reg_writel (struct isp_device*,int ,int ,int ) ;

__attribute__((used)) static void isp_disable_interrupts(struct isp_device *isp)
{
 isp_reg_writel(isp, 0, OMAP3_ISP_IOMEM_MAIN, ISP_IRQ0ENABLE);
}

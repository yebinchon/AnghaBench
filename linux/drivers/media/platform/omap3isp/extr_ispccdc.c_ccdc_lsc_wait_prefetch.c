
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_device {int dummy; } ;
struct isp_ccdc_device {int dummy; } ;


 int ETIMEDOUT ;
 int IRQ0STATUS_CCDC_LSC_PREF_COMP_IRQ ;
 int ISP_IRQ0STATUS ;
 int OMAP3_ISP_IOMEM_MAIN ;
 int isp_reg_readl (struct isp_device*,int ,int ) ;
 int isp_reg_writel (struct isp_device*,int,int ,int ) ;
 int rmb () ;
 struct isp_device* to_isp_device (struct isp_ccdc_device*) ;
 int udelay (int) ;

__attribute__((used)) static int ccdc_lsc_wait_prefetch(struct isp_ccdc_device *ccdc)
{
 struct isp_device *isp = to_isp_device(ccdc);
 unsigned int wait;

 isp_reg_writel(isp, IRQ0STATUS_CCDC_LSC_PREF_COMP_IRQ,
         OMAP3_ISP_IOMEM_MAIN, ISP_IRQ0STATUS);


 for (wait = 0; wait < 1000; wait++) {
  if (isp_reg_readl(isp, OMAP3_ISP_IOMEM_MAIN, ISP_IRQ0STATUS) &
      IRQ0STATUS_CCDC_LSC_PREF_COMP_IRQ) {
   isp_reg_writel(isp, IRQ0STATUS_CCDC_LSC_PREF_COMP_IRQ,
           OMAP3_ISP_IOMEM_MAIN, ISP_IRQ0STATUS);
   return 0;
  }

  rmb();
  udelay(1);
 }

 return -ETIMEDOUT;
}

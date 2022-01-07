
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_lpss {scalar_t__ type; scalar_t__ priv; int * priv_ctx; } ;
struct device {int dummy; } ;


 scalar_t__ LPSS_DEV_UART ;
 unsigned int LPSS_PRIV_REG_COUNT ;
 scalar_t__ LPSS_PRIV_RESETS ;
 struct intel_lpss* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

int intel_lpss_suspend(struct device *dev)
{
 struct intel_lpss *lpss = dev_get_drvdata(dev);
 unsigned int i;


 for (i = 0; i < LPSS_PRIV_REG_COUNT; i++)
  lpss->priv_ctx[i] = readl(lpss->priv + i * 4);






 if (lpss->type != LPSS_DEV_UART)
  writel(0, lpss->priv + LPSS_PRIV_RESETS);

 return 0;
}

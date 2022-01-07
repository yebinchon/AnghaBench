
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_lpss {scalar_t__ priv; int * priv_ctx; } ;
struct device {int dummy; } ;


 unsigned int LPSS_PRIV_REG_COUNT ;
 struct intel_lpss* dev_get_drvdata (struct device*) ;
 int intel_lpss_deassert_reset (struct intel_lpss*) ;
 int writel (int ,scalar_t__) ;

int intel_lpss_resume(struct device *dev)
{
 struct intel_lpss *lpss = dev_get_drvdata(dev);
 unsigned int i;

 intel_lpss_deassert_reset(lpss);


 for (i = 0; i < LPSS_PRIV_REG_COUNT; i++)
  writel(lpss->priv_ctx[i], lpss->priv + i * 4);

 return 0;
}

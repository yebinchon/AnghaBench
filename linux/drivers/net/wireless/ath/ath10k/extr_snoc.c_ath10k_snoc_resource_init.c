
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dev; } ;
struct ath10k_snoc {TYPE_1__* ce_irqs; struct platform_device* dev; int mem_pa; int mem; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int irq_line; } ;


 int CE_COUNT ;
 int EINVAL ;
 int ENODEV ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int ath10k_err (struct ath10k*,char*,...) ;
 struct ath10k_snoc* ath10k_snoc_priv (struct ath10k*) ;
 int devm_ioremap (int *,int ,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int ath10k_snoc_resource_init(struct ath10k *ar)
{
 struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
 struct platform_device *pdev;
 struct resource *res;
 int i, ret = 0;

 pdev = ar_snoc->dev;
 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "membase");
 if (!res) {
  ath10k_err(ar, "Memory base not found in DT\n");
  return -EINVAL;
 }

 ar_snoc->mem_pa = res->start;
 ar_snoc->mem = devm_ioremap(&pdev->dev, ar_snoc->mem_pa,
        resource_size(res));
 if (!ar_snoc->mem) {
  ath10k_err(ar, "Memory base ioremap failed with physical address %pa\n",
      &ar_snoc->mem_pa);
  return -EINVAL;
 }

 for (i = 0; i < CE_COUNT; i++) {
  res = platform_get_resource(ar_snoc->dev, IORESOURCE_IRQ, i);
  if (!res) {
   ath10k_err(ar, "failed to get IRQ%d\n", i);
   ret = -ENODEV;
   goto out;
  }
  ar_snoc->ce_irqs[i].irq_line = res->start;
 }

out:
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;
struct cqhci_host {int mmio; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 struct cqhci_host* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int devm_ioremap (int *,int ,int ) ;
 struct cqhci_host* devm_kzalloc (int *,int,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int resource_size (struct resource*) ;

struct cqhci_host *cqhci_pltfm_init(struct platform_device *pdev)
{
 struct cqhci_host *cq_host;
 struct resource *cqhci_memres = ((void*)0);


 cqhci_memres = platform_get_resource_byname(pdev, IORESOURCE_MEM,
         "cqhci_mem");
 if (!cqhci_memres) {
  dev_dbg(&pdev->dev, "CMDQ not supported\n");
  return ERR_PTR(-EINVAL);
 }

 cq_host = devm_kzalloc(&pdev->dev, sizeof(*cq_host), GFP_KERNEL);
 if (!cq_host)
  return ERR_PTR(-ENOMEM);
 cq_host->mmio = devm_ioremap(&pdev->dev,
         cqhci_memres->start,
         resource_size(cqhci_memres));
 if (!cq_host->mmio) {
  dev_err(&pdev->dev, "failed to remap cqhci regs\n");
  return ERR_PTR(-EBUSY);
 }
 dev_dbg(&pdev->dev, "CMDQ ioremap: done\n");

 return cq_host;
}

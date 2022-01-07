
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct iommu_domain* iommu_domain; TYPE_2__* dev; } ;
struct venus_core {int use_tz; TYPE_1__ fw; TYPE_2__* dev; } ;
struct platform_device_info {int dma_mask; int name; TYPE_2__* parent; int * fwnode; } ;
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct iommu_domain {int dummy; } ;
struct device_node {int name; int fwnode; } ;
typedef int info ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct platform_device*) ;
 int PTR_ERR (struct platform_device*) ;
 int dev_err (TYPE_2__*,char*) ;
 int iommu_attach_device (struct iommu_domain*,TYPE_2__*) ;
 struct iommu_domain* iommu_domain_alloc (int *) ;
 int iommu_domain_free (struct iommu_domain*) ;
 int memset (struct platform_device_info*,int ,int) ;
 int of_dma_configure (TYPE_2__*,struct device_node*,int) ;
 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 int of_node_put (struct device_node*) ;
 int platform_bus_type ;
 struct platform_device* platform_device_register_full (struct platform_device_info*) ;
 int platform_device_unregister (struct platform_device*) ;

int venus_firmware_init(struct venus_core *core)
{
 struct platform_device_info info;
 struct iommu_domain *iommu_dom;
 struct platform_device *pdev;
 struct device_node *np;
 int ret;

 np = of_get_child_by_name(core->dev->of_node, "video-firmware");
 if (!np) {
  core->use_tz = 1;
  return 0;
 }

 memset(&info, 0, sizeof(info));
 info.fwnode = &np->fwnode;
 info.parent = core->dev;
 info.name = np->name;
 info.dma_mask = DMA_BIT_MASK(32);

 pdev = platform_device_register_full(&info);
 if (IS_ERR(pdev)) {
  of_node_put(np);
  return PTR_ERR(pdev);
 }

 pdev->dev.of_node = np;

 ret = of_dma_configure(&pdev->dev, np, 1);
 if (ret) {
  dev_err(core->dev, "dma configure fail\n");
  goto err_unregister;
 }

 core->fw.dev = &pdev->dev;

 iommu_dom = iommu_domain_alloc(&platform_bus_type);
 if (!iommu_dom) {
  dev_err(core->fw.dev, "Failed to allocate iommu domain\n");
  ret = -ENOMEM;
  goto err_unregister;
 }

 ret = iommu_attach_device(iommu_dom, core->fw.dev);
 if (ret) {
  dev_err(core->fw.dev, "could not attach device\n");
  goto err_iommu_free;
 }

 core->fw.iommu_domain = iommu_dom;

 of_node_put(np);

 return 0;

err_iommu_free:
 iommu_domain_free(iommu_dom);
err_unregister:
 platform_device_unregister(pdev);
 of_node_put(np);
 return ret;
}

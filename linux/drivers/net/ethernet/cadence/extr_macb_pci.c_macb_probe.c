
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int num_res; int size_data; struct platform_device* pclk; struct platform_device* hclk; int dma_mask; struct resource* data; struct resource* res; int id; void* name; int fwnode; TYPE_1__* parent; int start; int flags; int end; } ;
struct platform_device_info {int num_res; int size_data; struct platform_device* pclk; struct platform_device* hclk; int dma_mask; struct platform_device_info* data; struct platform_device_info* res; int id; void* name; int fwnode; TYPE_1__* parent; int start; int flags; int end; } ;
struct platform_device {int dummy; } ;
struct pci_device_id {int dummy; } ;
struct TYPE_4__ {int fwnode; } ;
struct pci_dev {int dma_mask; int devfn; TYPE_1__ dev; } ;
struct macb_platform_data {int num_res; int size_data; struct platform_device* pclk; struct platform_device* hclk; int dma_mask; struct macb_platform_data* data; struct macb_platform_data* res; int id; void* name; int fwnode; TYPE_1__* parent; int start; int flags; int end; } ;
typedef int plat_info ;
typedef int plat_data ;


 int ARRAY_SIZE (struct resource*) ;
 int GEM_HCLK_RATE ;
 int GEM_PCLK_RATE ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct platform_device*) ;
 void* PCI_DRIVER_NAME ;
 void* PLAT_DRIVER_NAME ;
 int PTR_ERR (struct platform_device*) ;
 void* clk_register_fixed_rate (TYPE_1__*,char*,int *,int ,int ) ;
 int clk_unregister (struct platform_device*) ;
 int dev_err (TYPE_1__*,char*,int) ;
 int dev_info (TYPE_1__*,char*,int *) ;
 int memset (struct resource*,int,int) ;
 int pci_irq_vector (struct pci_dev*,int ) ;
 int pci_resource_end (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct platform_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int pcim_enable_device (struct pci_dev*) ;
 struct platform_device* platform_device_register_full (struct resource*) ;

__attribute__((used)) static int macb_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 int err;
 struct platform_device *plat_dev;
 struct platform_device_info plat_info;
 struct macb_platform_data plat_data;
 struct resource res[2];


 err = pcim_enable_device(pdev);
 if (err < 0) {
  dev_err(&pdev->dev, "Enabling PCI device has failed: %d", err);
  return err;
 }

 pci_set_master(pdev);


 memset(res, 0x00, sizeof(struct resource) * ARRAY_SIZE(res));
 res[0].start = pci_resource_start(pdev, 0);
 res[0].end = pci_resource_end(pdev, 0);
 res[0].name = PCI_DRIVER_NAME;
 res[0].flags = IORESOURCE_MEM;
 res[1].start = pci_irq_vector(pdev, 0);
 res[1].name = PCI_DRIVER_NAME;
 res[1].flags = IORESOURCE_IRQ;

 dev_info(&pdev->dev, "EMAC physical base addr: %pa\n",
   &res[0].start);


 memset(&plat_data, 0, sizeof(plat_data));


 plat_data.pclk = clk_register_fixed_rate(&pdev->dev, "pclk", ((void*)0), 0,
       GEM_PCLK_RATE);
 if (IS_ERR(plat_data.pclk)) {
  err = PTR_ERR(plat_data.pclk);
  goto err_pclk_register;
 }

 plat_data.hclk = clk_register_fixed_rate(&pdev->dev, "hclk", ((void*)0), 0,
       GEM_HCLK_RATE);
 if (IS_ERR(plat_data.hclk)) {
  err = PTR_ERR(plat_data.hclk);
  goto err_hclk_register;
 }


 memset(&plat_info, 0, sizeof(plat_info));
 plat_info.parent = &pdev->dev;
 plat_info.fwnode = pdev->dev.fwnode;
 plat_info.name = PLAT_DRIVER_NAME;
 plat_info.id = pdev->devfn;
 plat_info.res = res;
 plat_info.num_res = ARRAY_SIZE(res);
 plat_info.data = &plat_data;
 plat_info.size_data = sizeof(plat_data);
 plat_info.dma_mask = pdev->dma_mask;


 plat_dev = platform_device_register_full(&plat_info);
 if (IS_ERR(plat_dev)) {
  err = PTR_ERR(plat_dev);
  goto err_plat_dev_register;
 }

 pci_set_drvdata(pdev, plat_dev);

 return 0;

err_plat_dev_register:
 clk_unregister(plat_data.hclk);

err_hclk_register:
 clk_unregister(plat_data.pclk);

err_pclk_register:
 return err;
}

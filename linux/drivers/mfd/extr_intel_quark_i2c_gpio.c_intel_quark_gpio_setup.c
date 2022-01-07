
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int end; int start; } ;
struct device {int dummy; } ;
struct pci_dev {int irq; struct device dev; } ;
struct mfd_cell {int pdata_size; struct dwapb_platform_data* platform_data; scalar_t__ resources; } ;
struct dwapb_platform_data {TYPE_1__* properties; int nports; } ;
struct TYPE_2__ {int has_irq; int irq_shared; int * irq; int gpio_base; int ngpio; scalar_t__ idx; int * fwnode; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INTEL_QUARK_GPIO_NPORTS ;
 size_t INTEL_QUARK_IORES_MEM ;
 int INTEL_QUARK_MFD_GPIO_BASE ;
 int INTEL_QUARK_MFD_NGPIO ;
 int MFD_GPIO_BAR ;
 TYPE_1__* devm_kcalloc (struct device*,int ,int,int ) ;
 struct dwapb_platform_data* devm_kzalloc (struct device*,int,int ) ;
 int pci_resource_end (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;

__attribute__((used)) static int intel_quark_gpio_setup(struct pci_dev *pdev, struct mfd_cell *cell)
{
 struct dwapb_platform_data *pdata;
 struct resource *res = (struct resource *)cell->resources;
 struct device *dev = &pdev->dev;

 res[INTEL_QUARK_IORES_MEM].start =
  pci_resource_start(pdev, MFD_GPIO_BAR);
 res[INTEL_QUARK_IORES_MEM].end =
  pci_resource_end(pdev, MFD_GPIO_BAR);

 pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return -ENOMEM;


 pdata->nports = INTEL_QUARK_GPIO_NPORTS;
 pdata->properties = devm_kcalloc(dev, pdata->nports,
      sizeof(*pdata->properties),
      GFP_KERNEL);
 if (!pdata->properties)
  return -ENOMEM;


 pdata->properties->fwnode = ((void*)0);
 pdata->properties->idx = 0;
 pdata->properties->ngpio = INTEL_QUARK_MFD_NGPIO;
 pdata->properties->gpio_base = INTEL_QUARK_MFD_GPIO_BASE;
 pdata->properties->irq[0] = pdev->irq;
 pdata->properties->has_irq = 1;
 pdata->properties->irq_shared = 1;

 cell->platform_data = pdata;
 cell->pdata_size = sizeof(*pdata);

 return 0;
}

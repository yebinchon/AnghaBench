
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int end; int start; } ;
struct device {int dummy; } ;
struct pci_dev {int irq; struct device dev; } ;
struct mfd_cell {int pdata_size; struct dw_i2c_platform_data* platform_data; scalar_t__ resources; } ;
struct dw_i2c_platform_data {int i2c_scl_freq; } ;
struct dmi_system_id {scalar_t__ driver_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t INTEL_QUARK_IORES_IRQ ;
 size_t INTEL_QUARK_IORES_MEM ;
 int MFD_I2C_BAR ;
 struct dw_i2c_platform_data* devm_kzalloc (struct device*,int,int ) ;
 struct dmi_system_id* dmi_first_match (int ) ;
 int dmi_platform_info ;
 int pci_resource_end (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;

__attribute__((used)) static int intel_quark_i2c_setup(struct pci_dev *pdev, struct mfd_cell *cell)
{
 const struct dmi_system_id *dmi_id;
 struct dw_i2c_platform_data *pdata;
 struct resource *res = (struct resource *)cell->resources;
 struct device *dev = &pdev->dev;

 res[INTEL_QUARK_IORES_MEM].start =
  pci_resource_start(pdev, MFD_I2C_BAR);
 res[INTEL_QUARK_IORES_MEM].end =
  pci_resource_end(pdev, MFD_I2C_BAR);

 res[INTEL_QUARK_IORES_IRQ].start = pdev->irq;
 res[INTEL_QUARK_IORES_IRQ].end = pdev->irq;

 pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return -ENOMEM;


 pdata->i2c_scl_freq = 100000;

 dmi_id = dmi_first_match(dmi_platform_info);
 if (dmi_id)
  pdata->i2c_scl_freq = (uintptr_t)dmi_id->driver_data;

 cell->platform_data = pdata;
 cell->pdata_size = sizeof(*pdata);

 return 0;
}

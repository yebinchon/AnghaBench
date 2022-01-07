
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; scalar_t__ end; } ;
struct pci_dev {int dev; } ;
struct lpc_ich_priv {size_t chipset; int gbase; int abase; } ;
struct TYPE_5__ {int gpio_version; int use_gpio; } ;
struct TYPE_4__ {int name; int num_resources; } ;


 scalar_t__ ACPIBASE_GPE_END ;
 int ACPIBASE_GPE_OFF ;
 int ENODEV ;
 size_t ICH_RES_GPE0 ;
 size_t ICH_RES_GPIO ;


 int PLATFORM_DEVID_AUTO ;
 int acpi_check_resource_conflict (struct resource*) ;
 int dev_notice (int *,char*) ;
 struct resource* gpio_ich_res ;
 TYPE_3__* lpc_chipset_info ;
 int lpc_ich_check_conflict_gpio (struct resource*) ;
 int lpc_ich_enable_acpi_space (struct pci_dev*) ;
 int lpc_ich_enable_gpio_space (struct pci_dev*) ;
 int lpc_ich_finalize_gpio_cell (struct pci_dev*) ;
 TYPE_1__ lpc_ich_gpio_cell ;
 int mfd_add_devices (int *,int ,TYPE_1__*,int,int *,int ,int *) ;
 struct lpc_ich_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int lpc_ich_init_gpio(struct pci_dev *dev)
{
 struct lpc_ich_priv *priv = pci_get_drvdata(dev);
 u32 base_addr_cfg;
 u32 base_addr;
 int ret;
 bool acpi_conflict = 0;
 struct resource *res;


 pci_read_config_dword(dev, priv->abase, &base_addr_cfg);
 base_addr = base_addr_cfg & 0x0000ff80;
 if (!base_addr) {
  dev_notice(&dev->dev, "I/O space for ACPI uninitialized\n");
  lpc_ich_gpio_cell.num_resources--;
  goto gpe0_done;
 }

 res = &gpio_ich_res[ICH_RES_GPE0];
 res->start = base_addr + ACPIBASE_GPE_OFF;
 res->end = base_addr + ACPIBASE_GPE_END;
 ret = acpi_check_resource_conflict(res);
 if (ret) {





  lpc_ich_gpio_cell.num_resources--;
  acpi_conflict = 1;
 } else {
  lpc_ich_enable_acpi_space(dev);
 }

gpe0_done:

 pci_read_config_dword(dev, priv->gbase, &base_addr_cfg);
 base_addr = base_addr_cfg & 0x0000ff80;
 if (!base_addr) {
  dev_notice(&dev->dev, "I/O space for GPIO uninitialized\n");
  ret = -ENODEV;
  goto gpio_done;
 }


 res = &gpio_ich_res[ICH_RES_GPIO];
 res->start = base_addr;
 switch (lpc_chipset_info[priv->chipset].gpio_version) {
 case 128:
 case 129:
  res->end = res->start + 128 - 1;
  break;
 default:
  res->end = res->start + 64 - 1;
  break;
 }

 ret = lpc_ich_check_conflict_gpio(res);
 if (ret < 0) {

  acpi_conflict = 1;
  goto gpio_done;
 }
 lpc_chipset_info[priv->chipset].use_gpio = ret;
 lpc_ich_enable_gpio_space(dev);

 lpc_ich_finalize_gpio_cell(dev);
 ret = mfd_add_devices(&dev->dev, PLATFORM_DEVID_AUTO,
         &lpc_ich_gpio_cell, 1, ((void*)0), 0, ((void*)0));

gpio_done:
 if (acpi_conflict)
  pr_warn("Resource conflict(s) found affecting %s\n",
    lpc_ich_gpio_cell.name);
 return ret;
}

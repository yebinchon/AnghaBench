
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct resource {scalar_t__ end; scalar_t__ start; } ;
struct pci_dev {int dev; } ;
struct lpc_ich_priv {size_t chipset; int abase; } ;
struct TYPE_5__ {int iTCO_version; } ;
struct TYPE_4__ {int num_resources; } ;


 scalar_t__ ACPIBASE_GCS_END ;
 scalar_t__ ACPIBASE_GCS_OFF ;
 scalar_t__ ACPIBASE_PMC_END ;
 scalar_t__ ACPIBASE_PMC_OFF ;
 scalar_t__ ACPIBASE_SMI_END ;
 scalar_t__ ACPIBASE_SMI_OFF ;
 scalar_t__ ACPIBASE_TCO_END ;
 scalar_t__ ACPIBASE_TCO_OFF ;
 int ACPICTRL_PMCBASE ;
 int ENODEV ;
 int ICH_RES_IO_SMI ;
 int ICH_RES_IO_TCO ;
 int ICH_RES_MEM_GCS_PMC ;
 int PLATFORM_DEVID_AUTO ;
 int RCBABASE ;
 scalar_t__ acpi_has_watchdog () ;
 int dev_notice (int *,char*) ;
 TYPE_3__* lpc_chipset_info ;
 int lpc_ich_enable_acpi_space (struct pci_dev*) ;
 int lpc_ich_enable_pmc_space (struct pci_dev*) ;
 int lpc_ich_finalize_wdt_cell (struct pci_dev*) ;
 TYPE_1__ lpc_ich_wdt_cell ;
 int mfd_add_devices (int *,int ,TYPE_1__*,int,int *,int ,int *) ;
 struct lpc_ich_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 struct resource* wdt_io_res (int ) ;
 struct resource* wdt_mem_res (int ) ;

__attribute__((used)) static int lpc_ich_init_wdt(struct pci_dev *dev)
{
 struct lpc_ich_priv *priv = pci_get_drvdata(dev);
 u32 base_addr_cfg;
 u32 base_addr;
 int ret;
 struct resource *res;


 if (acpi_has_watchdog())
  return -ENODEV;


 pci_read_config_dword(dev, priv->abase, &base_addr_cfg);
 base_addr = base_addr_cfg & 0x0000ff80;
 if (!base_addr) {
  dev_notice(&dev->dev, "I/O space for ACPI uninitialized\n");
  ret = -ENODEV;
  goto wdt_done;
 }

 res = wdt_io_res(ICH_RES_IO_TCO);
 res->start = base_addr + ACPIBASE_TCO_OFF;
 res->end = base_addr + ACPIBASE_TCO_END;

 res = wdt_io_res(ICH_RES_IO_SMI);
 res->start = base_addr + ACPIBASE_SMI_OFF;
 res->end = base_addr + ACPIBASE_SMI_END;

 lpc_ich_enable_acpi_space(dev);
 if (lpc_chipset_info[priv->chipset].iTCO_version == 1) {

  lpc_ich_wdt_cell.num_resources--;
 } else if (lpc_chipset_info[priv->chipset].iTCO_version == 2) {
  pci_read_config_dword(dev, RCBABASE, &base_addr_cfg);
  base_addr = base_addr_cfg & 0xffffc000;
  if (!(base_addr_cfg & 1)) {
   dev_notice(&dev->dev, "RCBA is disabled by "
     "hardware/BIOS, device disabled\n");
   ret = -ENODEV;
   goto wdt_done;
  }
  res = wdt_mem_res(ICH_RES_MEM_GCS_PMC);
  res->start = base_addr + ACPIBASE_GCS_OFF;
  res->end = base_addr + ACPIBASE_GCS_END;
 } else if (lpc_chipset_info[priv->chipset].iTCO_version == 3) {
  lpc_ich_enable_pmc_space(dev);
  pci_read_config_dword(dev, ACPICTRL_PMCBASE, &base_addr_cfg);
  base_addr = base_addr_cfg & 0xfffffe00;

  res = wdt_mem_res(ICH_RES_MEM_GCS_PMC);
  res->start = base_addr + ACPIBASE_PMC_OFF;
  res->end = base_addr + ACPIBASE_PMC_END;
 }

 ret = lpc_ich_finalize_wdt_cell(dev);
 if (ret)
  goto wdt_done;

 ret = mfd_add_devices(&dev->dev, PLATFORM_DEVID_AUTO,
         &lpc_ich_wdt_cell, 1, ((void*)0), 0, ((void*)0));

wdt_done:
 return ret;
}

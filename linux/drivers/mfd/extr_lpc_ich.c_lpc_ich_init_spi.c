
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct resource {int start; int end; } ;
struct pci_dev {int dev; struct pci_bus* bus; } ;
struct pci_bus {int dummy; } ;
struct lpc_ich_priv {size_t chipset; } ;
struct intel_spi_boardinfo {int type; int writeable; } ;
struct TYPE_5__ {int spi_type; } ;
struct TYPE_4__ {int pdata_size; struct intel_spi_boardinfo* platform_data; } ;


 int BCR ;
 int BCR_WPD ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;



 int PCI_BASE_ADDRESS_0 ;
 unsigned int PCI_DEVFN (int,int) ;
 int PLATFORM_DEVID_NONE ;
 int RCBABASE ;
 int SPIBASE_APL_SZ ;
 int SPIBASE_BYT ;
 int SPIBASE_BYT_EN ;
 int SPIBASE_BYT_SZ ;
 int SPIBASE_LPT ;
 int SPIBASE_LPT_SZ ;
 struct intel_spi_boardinfo* devm_kzalloc (int *,int,int ) ;
 struct resource* intel_spi_res ;
 TYPE_3__* lpc_chipset_info ;
 TYPE_1__ lpc_ich_spi_cell ;
 int mfd_add_devices (int *,int ,TYPE_1__*,int,int *,int ,int *) ;
 int pci_bus_read_config_dword (struct pci_bus*,unsigned int,int ,int*) ;
 int pci_bus_write_config_byte (struct pci_bus*,unsigned int,int,int) ;
 struct lpc_ich_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int round_down (int,int) ;

__attribute__((used)) static int lpc_ich_init_spi(struct pci_dev *dev)
{
 struct lpc_ich_priv *priv = pci_get_drvdata(dev);
 struct resource *res = &intel_spi_res[0];
 struct intel_spi_boardinfo *info;
 u32 spi_base, rcba, bcr;

 info = devm_kzalloc(&dev->dev, sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 info->type = lpc_chipset_info[priv->chipset].spi_type;

 switch (info->type) {
 case 129:
  pci_read_config_dword(dev, SPIBASE_BYT, &spi_base);
  if (spi_base & SPIBASE_BYT_EN) {
   res->start = spi_base & ~(SPIBASE_BYT_SZ - 1);
   res->end = res->start + SPIBASE_BYT_SZ - 1;
  }
  break;

 case 128:
  pci_read_config_dword(dev, RCBABASE, &rcba);
  if (rcba & 1) {
   spi_base = round_down(rcba, SPIBASE_LPT_SZ);
   res->start = spi_base + SPIBASE_LPT;
   res->end = res->start + SPIBASE_LPT_SZ - 1;

   pci_read_config_dword(dev, BCR, &bcr);
   info->writeable = !!(bcr & BCR_WPD);
  }
  break;

 case 130: {
  unsigned int p2sb = PCI_DEVFN(13, 0);
  unsigned int spi = PCI_DEVFN(13, 2);
  struct pci_bus *bus = dev->bus;






  pci_bus_write_config_byte(bus, p2sb, 0xe1, 0x0);
  pci_bus_read_config_dword(bus, spi, PCI_BASE_ADDRESS_0,
       &spi_base);
  if (spi_base != ~0) {
   res->start = spi_base & 0xfffffff0;
   res->end = res->start + SPIBASE_APL_SZ - 1;

   pci_bus_read_config_dword(bus, spi, BCR, &bcr);
   info->writeable = !!(bcr & BCR_WPD);
  }

  pci_bus_write_config_byte(bus, p2sb, 0xe1, 0x1);
  break;
 }

 default:
  return -EINVAL;
 }

 if (!res->start)
  return -ENODEV;

 lpc_ich_spi_cell.platform_data = info;
 lpc_ich_spi_cell.pdata_size = sizeof(*info);

 return mfd_add_devices(&dev->dev, PLATFORM_DEVID_NONE,
          &lpc_ich_spi_cell, 1, ((void*)0), 0, ((void*)0));
}

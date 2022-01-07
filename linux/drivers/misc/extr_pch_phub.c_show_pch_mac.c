
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pch_phub_reg {int pch_phub_extrom_base_address; int pdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 struct pch_phub_reg* dev_get_drvdata (struct device*) ;
 int pch_phub_read_gbe_mac_addr (struct pch_phub_reg*,int *) ;
 int pci_map_rom (int ,int *) ;
 int pci_unmap_rom (int ,int ) ;
 int sprintf (char*,char*,int *) ;

__attribute__((used)) static ssize_t show_pch_mac(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 u8 mac[8];
 struct pch_phub_reg *chip = dev_get_drvdata(dev);
 ssize_t rom_size;

 chip->pch_phub_extrom_base_address = pci_map_rom(chip->pdev, &rom_size);
 if (!chip->pch_phub_extrom_base_address)
  return -ENOMEM;

 pch_phub_read_gbe_mac_addr(chip, mac);
 pci_unmap_rom(chip->pdev, chip->pch_phub_extrom_base_address);

 return sprintf(buf, "%pM\n", mac);
}

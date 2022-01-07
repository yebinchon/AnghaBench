
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct map_pci_info {scalar_t__ base; } ;


 int iounmap (scalar_t__) ;
 int pci_disable_rom (struct pci_dev*) ;

__attribute__((used)) static void
intel_dc21285_exit(struct pci_dev *dev, struct map_pci_info *map)
{
 if (map->base)
  iounmap(map->base);




 pci_disable_rom(dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_2__ {int map_priv_2; } ;
struct map_pci_info {TYPE_1__ map; scalar_t__ base; } ;


 int iounmap (scalar_t__) ;
 int pci_write_config_dword (struct pci_dev*,int,int ) ;

__attribute__((used)) static void
intel_iq80310_exit(struct pci_dev *dev, struct map_pci_info *map)
{
 if (map->base)
  iounmap(map->base);
 pci_write_config_dword(dev, 0x44, map->map.map_priv_2);
}

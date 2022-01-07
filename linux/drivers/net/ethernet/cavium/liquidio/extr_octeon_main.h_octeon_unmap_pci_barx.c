
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct octeon_device {TYPE_2__* pci_dev; TYPE_1__* mmio; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ start; int hw_addr; scalar_t__ done; } ;


 int dev_dbg (int *,char*,int) ;
 int iounmap (int ) ;
 int pci_release_region (TYPE_2__*,int) ;

__attribute__((used)) static inline void octeon_unmap_pci_barx(struct octeon_device *oct, int baridx)
{
 dev_dbg(&oct->pci_dev->dev, "Freeing PCI mapped regions for Bar%d\n",
  baridx);

 if (oct->mmio[baridx].done)
  iounmap(oct->mmio[baridx].hw_addr);

 if (oct->mmio[baridx].start)
  pci_release_region(oct->pci_dev, baridx * 2);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct octeon_device {int pcie_port; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int CN6XXX_SLI_MAC_NUMBER ;
 int dev_dbg (int *,char*,int) ;
 int octeon_read_csr (struct octeon_device*,int ) ;

__attribute__((used)) static void lio_cn6xxx_get_pcie_qlmport(struct octeon_device *oct)
{



 oct->pcie_port = octeon_read_csr(oct, CN6XXX_SLI_MAC_NUMBER) & 0xff;

 dev_dbg(&oct->pci_dev->dev, "Using PCIE Port %d\n", oct->pcie_port);
}

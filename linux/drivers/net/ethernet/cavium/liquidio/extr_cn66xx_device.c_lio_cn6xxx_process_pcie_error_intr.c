
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct octeon_device {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 int CVM_CAST64 (int ) ;
 int dev_err (int *,char*,int ) ;

__attribute__((used)) static void
lio_cn6xxx_process_pcie_error_intr(struct octeon_device *oct, u64 intr64)
{
 dev_err(&oct->pci_dev->dev, "Error Intr: 0x%016llx\n",
  CVM_CAST64(intr64));
}

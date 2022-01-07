
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct octeon_device {int dummy; } ;


 int __octeon_pci_rw_core_mem (struct octeon_device*,int ,int *,int ,int ) ;

void
octeon_pci_write_core_mem(struct octeon_device *oct,
     u64 coreaddr,
     const u8 *buf,
     u32 len)
{
 __octeon_pci_rw_core_mem(oct, coreaddr, (u8 *)buf, len, 0);
}

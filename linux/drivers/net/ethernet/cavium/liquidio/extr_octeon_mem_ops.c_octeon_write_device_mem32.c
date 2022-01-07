
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct octeon_device {int dummy; } ;
typedef int __be32 ;


 int __octeon_pci_rw_core_mem (struct octeon_device*,int ,int *,int,int ) ;
 int cpu_to_be32 (int ) ;

void octeon_write_device_mem32(struct octeon_device *oct, u64 coreaddr,
          u32 val)
{
 __be32 t = cpu_to_be32(val);

 __octeon_pci_rw_core_mem(oct, coreaddr, (u8 *)&t, 4, 0);
}

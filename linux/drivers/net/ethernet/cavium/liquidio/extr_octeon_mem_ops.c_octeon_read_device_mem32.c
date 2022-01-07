
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct octeon_device {int dummy; } ;
typedef int __be32 ;


 int __octeon_pci_rw_core_mem (struct octeon_device*,int ,int *,int,int) ;
 int be32_to_cpu (int ) ;

u32 octeon_read_device_mem32(struct octeon_device *oct, u64 coreaddr)
{
 __be32 ret;

 __octeon_pci_rw_core_mem(oct, coreaddr, (u8 *)&ret, 4, 1);

 return be32_to_cpu(ret);
}

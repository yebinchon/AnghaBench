
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct octeon_device {int dummy; } ;
typedef int __be64 ;


 int __octeon_pci_rw_core_mem (struct octeon_device*,int ,int *,int,int) ;
 int be64_to_cpu (int ) ;

u64 octeon_read_device_mem64(struct octeon_device *oct, u64 coreaddr)
{
 __be64 ret;

 __octeon_pci_rw_core_mem(oct, coreaddr, (u8 *)&ret, 8, 1);

 return be64_to_cpu(ret);
}

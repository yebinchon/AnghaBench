
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct octeon_device {int dummy; } ;


 int CN6XXX_MIO_RST_BOOT ;
 int lio_pci_readq (struct octeon_device*,int ) ;

u32 lio_cn6xxx_coprocessor_clock(struct octeon_device *oct)
{



 return ((lio_pci_readq(oct, CN6XXX_MIO_RST_BOOT) >> 24) & 0x3f) * 50;
}

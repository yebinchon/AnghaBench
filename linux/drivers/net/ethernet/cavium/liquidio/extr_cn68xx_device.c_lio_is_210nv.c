
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct octeon_device {int dummy; } ;


 int CN6XXX_MIO_QLM4_CFG ;
 int CN6XXX_MIO_QLM_CFG_MASK ;
 int lio_pci_readq (struct octeon_device*,int ) ;

__attribute__((used)) static int lio_is_210nv(struct octeon_device *oct)
{
 u64 mio_qlm4_cfg = lio_pci_readq(oct, CN6XXX_MIO_QLM4_CFG);

 return ((mio_qlm4_cfg & CN6XXX_MIO_QLM_CFG_MASK) == 0);
}

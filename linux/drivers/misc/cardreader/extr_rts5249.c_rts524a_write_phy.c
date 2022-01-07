
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtsx_pcr {int dummy; } ;


 int __rtsx_pci_write_phy_register (struct rtsx_pcr*,int,int ) ;

__attribute__((used)) static int rts524a_write_phy(struct rtsx_pcr *pcr, u8 addr, u16 val)
{
 addr = addr & 0x80 ? (addr & 0x7F) | 0x40 : addr;

 return __rtsx_pci_write_phy_register(pcr, addr, val);
}

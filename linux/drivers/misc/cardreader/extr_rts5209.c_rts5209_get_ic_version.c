
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_pcr {int dummy; } ;


 int rtsx_pci_readb (struct rtsx_pcr*,int) ;

__attribute__((used)) static u8 rts5209_get_ic_version(struct rtsx_pcr *pcr)
{
 u8 val;

 val = rtsx_pci_readb(pcr, 0x1C);
 return val & 0x0F;
}

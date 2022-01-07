
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_pcr {int dummy; } ;


 int RTL8411B_PACKAGE_MODE ;
 int rtsx_pci_read_register (struct rtsx_pcr*,int ,int*) ;

__attribute__((used)) static int rtl8411b_is_qfn48(struct rtsx_pcr *pcr)
{
 u8 val = 0;

 rtsx_pci_read_register(pcr, RTL8411B_PACKAGE_MODE, &val);

 if (val & 0x2)
  return 1;
 else
  return 0;
}

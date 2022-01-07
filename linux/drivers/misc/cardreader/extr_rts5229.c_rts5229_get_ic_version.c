
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_pcr {int dummy; } ;


 int DUMMY_REG_RESET_0 ;
 int rtsx_pci_read_register (struct rtsx_pcr*,int ,int*) ;

__attribute__((used)) static u8 rts5229_get_ic_version(struct rtsx_pcr *pcr)
{
 u8 val;

 rtsx_pci_read_register(pcr, DUMMY_REG_RESET_0, &val);
 return val & 0x0F;
}

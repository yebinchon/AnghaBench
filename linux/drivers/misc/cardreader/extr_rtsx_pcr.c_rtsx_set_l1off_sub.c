
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_pcr {int dummy; } ;


 int L1SUB_CONFIG3 ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int ) ;

int rtsx_set_l1off_sub(struct rtsx_pcr *pcr, u8 val)
{
 rtsx_pci_write_register(pcr, L1SUB_CONFIG3, 0xFF, val);

 return 0;
}

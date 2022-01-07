
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_pcr {int dummy; } ;


 int REG_DV3318_OCPSTAT ;
 int rtsx_pci_read_register (struct rtsx_pcr*,int ,int *) ;

__attribute__((used)) static int rts5260_get_ocpstat2(struct rtsx_pcr *pcr, u8 *val)
{
 return rtsx_pci_read_register(pcr, REG_DV3318_OCPSTAT, val);
}

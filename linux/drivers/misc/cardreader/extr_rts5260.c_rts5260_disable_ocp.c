
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_pcr {int dummy; } ;


 int REG_OCPCTL ;
 int SD_DETECT_EN ;
 int SD_OCP_INT_EN ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int ) ;

__attribute__((used)) static void rts5260_disable_ocp(struct rtsx_pcr *pcr)
{
 u8 mask = 0;

 mask = SD_OCP_INT_EN | SD_DETECT_EN;
 rtsx_pci_write_register(pcr, REG_OCPCTL, mask, 0);

}

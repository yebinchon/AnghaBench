
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_cr_option {scalar_t__ force_clkreq_0; } ;
struct rtsx_pcr {int flags; struct rtsx_cr_option option; } ;


 int ASPM_FORCE_CTL ;
 int CMD_TIMEOUT_DEF ;
 int FORCE_CLKREQ_DELINK_MASK ;
 int FORCE_CLKREQ_HIGH ;
 int FORCE_CLKREQ_LOW ;
 int GPIO_CTL ;
 int L1SUB_CONFIG3 ;
 int LDO_PWR_SEL ;
 int OLT_LED_CTL ;
 int OUTPUT_3V3 ;
 int PCR_REVERSE_SOCKET ;
 int PETXCFG ;
 int WRITE_REG_CMD ;
 int rts5249_fill_driving (struct rtsx_pcr*,int ) ;
 int rts5249_init_from_cfg (struct rtsx_pcr*) ;
 int rts5249_init_from_hw (struct rtsx_pcr*) ;
 int rtsx_pci_add_cmd (struct rtsx_pcr*,int ,int ,int,int) ;
 int rtsx_pci_init_cmd (struct rtsx_pcr*) ;
 int rtsx_pci_send_cmd (struct rtsx_pcr*,int ) ;

__attribute__((used)) static int rts5249_extra_init_hw(struct rtsx_pcr *pcr)
{
 struct rtsx_cr_option *option = &(pcr->option);

 rts5249_init_from_cfg(pcr);
 rts5249_init_from_hw(pcr);

 rtsx_pci_init_cmd(pcr);


 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, L1SUB_CONFIG3, 0xFF, 0x00);

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, GPIO_CTL, 0x02, 0x02);

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, ASPM_FORCE_CTL, 0x3F, 0);

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, LDO_PWR_SEL, 0x03, 0x00);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, LDO_PWR_SEL, 0x03, 0x01);

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, OLT_LED_CTL, 0x0F, 0x02);

 rts5249_fill_driving(pcr, OUTPUT_3V3);
 if (pcr->flags & PCR_REVERSE_SOCKET)
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, PETXCFG, 0xB0, 0xB0);
 else
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, PETXCFG, 0xB0, 0x80);





 if (option->force_clkreq_0)
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, PETXCFG,
   FORCE_CLKREQ_DELINK_MASK, FORCE_CLKREQ_LOW);
 else
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, PETXCFG,
   FORCE_CLKREQ_DELINK_MASK, FORCE_CLKREQ_HIGH);

 return rtsx_pci_send_cmd(pcr, CMD_TIMEOUT_DEF);
}

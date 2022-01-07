
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;
struct realtek_pci_ms {struct rtsx_pcr* pcr; } ;


 int CARD_CLK_EN ;
 int CARD_OE ;
 int CARD_SELECT ;
 int CARD_SHARE_48_MS ;
 int CARD_SHARE_MASK ;
 int CARD_SHARE_MODE ;
 int MS_CLK_EN ;
 int MS_MOD_SEL ;
 int MS_OUTPUT_EN ;
 int RTSX_MS_CARD ;
 int WRITE_REG_CMD ;
 int msleep (int) ;
 int rtsx_pci_add_cmd (struct rtsx_pcr*,int ,int ,int,int) ;
 int rtsx_pci_card_power_on (struct rtsx_pcr*,int ) ;
 int rtsx_pci_card_pull_ctl_enable (struct rtsx_pcr*,int ) ;
 int rtsx_pci_init_cmd (struct rtsx_pcr*) ;
 int rtsx_pci_send_cmd (struct rtsx_pcr*,int) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int ,int ) ;

__attribute__((used)) static int ms_power_on(struct realtek_pci_ms *host)
{
 struct rtsx_pcr *pcr = host->pcr;
 int err;

 rtsx_pci_init_cmd(pcr);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_SELECT, 0x07, MS_MOD_SEL);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_SHARE_MODE,
   CARD_SHARE_MASK, CARD_SHARE_48_MS);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_CLK_EN,
   MS_CLK_EN, MS_CLK_EN);
 err = rtsx_pci_send_cmd(pcr, 100);
 if (err < 0)
  return err;

 err = rtsx_pci_card_pull_ctl_enable(pcr, RTSX_MS_CARD);
 if (err < 0)
  return err;

 err = rtsx_pci_card_power_on(pcr, RTSX_MS_CARD);
 if (err < 0)
  return err;


 msleep(150);

 err = rtsx_pci_write_register(pcr, CARD_OE,
   MS_OUTPUT_EN, MS_OUTPUT_EN);
 if (err < 0)
  return err;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;
struct realtek_pci_ms {struct rtsx_pcr* pcr; } ;


 int CARD_CLK_EN ;
 int CARD_OE ;
 int MS_CLK_EN ;
 int MS_OUTPUT_EN ;
 int RTSX_MS_CARD ;
 int WRITE_REG_CMD ;
 int rtsx_pci_add_cmd (struct rtsx_pcr*,int ,int ,int ,int ) ;
 int rtsx_pci_card_power_off (struct rtsx_pcr*,int ) ;
 int rtsx_pci_card_pull_ctl_disable (struct rtsx_pcr*,int ) ;
 int rtsx_pci_init_cmd (struct rtsx_pcr*) ;
 int rtsx_pci_send_cmd (struct rtsx_pcr*,int) ;

__attribute__((used)) static int ms_power_off(struct realtek_pci_ms *host)
{
 struct rtsx_pcr *pcr = host->pcr;
 int err;

 rtsx_pci_init_cmd(pcr);

 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_CLK_EN, MS_CLK_EN, 0);
 rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_OE, MS_OUTPUT_EN, 0);

 err = rtsx_pci_send_cmd(pcr, 100);
 if (err < 0)
  return err;

 err = rtsx_pci_card_power_off(pcr, RTSX_MS_CARD);
 if (err < 0)
  return err;

 return rtsx_pci_card_pull_ctl_disable(pcr, RTSX_MS_CARD);
}

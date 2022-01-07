
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_pcr {int dummy; } ;
struct realtek_pci_sdmmc {struct rtsx_pcr* pcr; } ;
struct mmc_command {int opcode; } ;


 int SD_CFG3 ;
 int SD_RSP_80CLK_TIMEOUT_EN ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int ,int ) ;
 int sd_change_phase (struct realtek_pci_sdmmc*,int ,int) ;
 int sd_clear_error (struct realtek_pci_sdmmc*) ;
 int sd_read_data (struct realtek_pci_sdmmc*,struct mmc_command*,int,int *,int ,int) ;
 int sd_wait_data_idle (struct realtek_pci_sdmmc*) ;

__attribute__((used)) static int sd_tuning_rx_cmd(struct realtek_pci_sdmmc *host,
  u8 opcode, u8 sample_point)
{
 int err;
 struct mmc_command cmd = {};
 struct rtsx_pcr *pcr = host->pcr;

 sd_change_phase(host, sample_point, 1);

 rtsx_pci_write_register(pcr, SD_CFG3, SD_RSP_80CLK_TIMEOUT_EN,
  SD_RSP_80CLK_TIMEOUT_EN);

 cmd.opcode = opcode;
 err = sd_read_data(host, &cmd, 0x40, ((void*)0), 0, 100);
 if (err < 0) {

  sd_wait_data_idle(host);
  sd_clear_error(host);
  rtsx_pci_write_register(pcr, SD_CFG3,
   SD_RSP_80CLK_TIMEOUT_EN, 0);
  return err;
 }

 rtsx_pci_write_register(pcr, SD_CFG3, SD_RSP_80CLK_TIMEOUT_EN, 0);
 return 0;
}

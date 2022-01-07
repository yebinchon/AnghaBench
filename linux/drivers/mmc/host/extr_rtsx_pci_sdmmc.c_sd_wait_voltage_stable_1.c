
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_pcr {int dummy; } ;
struct realtek_pci_sdmmc {struct rtsx_pcr* pcr; } ;


 int EINVAL ;
 int SD_BUS_STAT ;
 int SD_CLK_FORCE_STOP ;
 int SD_CMD_STATUS ;
 int SD_DAT0_STATUS ;
 int SD_DAT1_STATUS ;
 int SD_DAT2_STATUS ;
 int SD_DAT3_STATUS ;
 int mdelay (int) ;
 int rtsx_pci_read_register (struct rtsx_pcr*,int ,int*) ;
 int rtsx_pci_write_register (struct rtsx_pcr*,int ,int,int ) ;

__attribute__((used)) static int sd_wait_voltage_stable_1(struct realtek_pci_sdmmc *host)
{
 struct rtsx_pcr *pcr = host->pcr;
 int err;
 u8 stat;





 mdelay(1);





 err = rtsx_pci_read_register(pcr, SD_BUS_STAT, &stat);
 if (err < 0)
  return err;

 if (stat & (SD_CMD_STATUS | SD_DAT3_STATUS | SD_DAT2_STATUS |
    SD_DAT1_STATUS | SD_DAT0_STATUS))
  return -EINVAL;


 err = rtsx_pci_write_register(pcr, SD_BUS_STAT,
   0xFF, SD_CLK_FORCE_STOP);
 if (err < 0)
  return err;

 return 0;
}

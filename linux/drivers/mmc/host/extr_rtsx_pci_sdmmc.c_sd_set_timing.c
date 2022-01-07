
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {int dummy; } ;
struct realtek_pci_sdmmc {struct rtsx_pcr* pcr; } ;


 int CARD_CLK_SOURCE ;
 int CLK_CTL ;
 int CLK_LOW_FREQ ;
 int CRC_FIX_CLK ;
 int CRC_VAR_CLK0 ;
 int DDR_VAR_RX_CMD ;
 int DDR_VAR_RX_DAT ;
 int DDR_VAR_TX_CMD_DAT ;






 int SAMPLE_VAR_CLK1 ;
 int SD20_RX_14_DELAY ;
 int SD20_RX_POS_EDGE ;
 int SD20_RX_SEL_MASK ;
 int SD20_TX_14_AHEAD ;
 int SD20_TX_SEL_MASK ;
 int SD30_FIX_CLK ;
 int SD30_VAR_CLK0 ;
 int SD_20_MODE ;
 int SD_30_MODE ;
 int SD_ASYNC_FIFO_NOT_RST ;
 int SD_CFG1 ;
 int SD_DDR_MODE ;
 int SD_PUSH_POINT_CTL ;
 int SD_SAMPLE_POINT_CTL ;
 int WRITE_REG_CMD ;
 int rtsx_pci_add_cmd (struct rtsx_pcr*,int ,int ,int,int) ;
 int rtsx_pci_init_cmd (struct rtsx_pcr*) ;
 int rtsx_pci_send_cmd (struct rtsx_pcr*,int) ;

__attribute__((used)) static int sd_set_timing(struct realtek_pci_sdmmc *host, unsigned char timing)
{
 struct rtsx_pcr *pcr = host->pcr;
 int err = 0;

 rtsx_pci_init_cmd(pcr);

 switch (timing) {
 case 129:
 case 128:
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, SD_CFG1,
    0x0C | SD_ASYNC_FIFO_NOT_RST,
    SD_30_MODE | SD_ASYNC_FIFO_NOT_RST);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CLK_CTL,
    CLK_LOW_FREQ, CLK_LOW_FREQ);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_CLK_SOURCE, 0xFF,
    CRC_VAR_CLK0 | SD30_FIX_CLK | SAMPLE_VAR_CLK1);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CLK_CTL, CLK_LOW_FREQ, 0);
  break;

 case 133:
 case 130:
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, SD_CFG1,
    0x0C | SD_ASYNC_FIFO_NOT_RST,
    SD_DDR_MODE | SD_ASYNC_FIFO_NOT_RST);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CLK_CTL,
    CLK_LOW_FREQ, CLK_LOW_FREQ);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_CLK_SOURCE, 0xFF,
    CRC_VAR_CLK0 | SD30_FIX_CLK | SAMPLE_VAR_CLK1);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CLK_CTL, CLK_LOW_FREQ, 0);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, SD_PUSH_POINT_CTL,
    DDR_VAR_TX_CMD_DAT, DDR_VAR_TX_CMD_DAT);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, SD_SAMPLE_POINT_CTL,
    DDR_VAR_RX_DAT | DDR_VAR_RX_CMD,
    DDR_VAR_RX_DAT | DDR_VAR_RX_CMD);
  break;

 case 132:
 case 131:
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, SD_CFG1,
    0x0C, SD_20_MODE);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CLK_CTL,
    CLK_LOW_FREQ, CLK_LOW_FREQ);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_CLK_SOURCE, 0xFF,
    CRC_FIX_CLK | SD30_VAR_CLK0 | SAMPLE_VAR_CLK1);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CLK_CTL, CLK_LOW_FREQ, 0);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, SD_PUSH_POINT_CTL,
    SD20_TX_SEL_MASK, SD20_TX_14_AHEAD);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, SD_SAMPLE_POINT_CTL,
    SD20_RX_SEL_MASK, SD20_RX_14_DELAY);
  break;

 default:
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD,
    SD_CFG1, 0x0C, SD_20_MODE);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CLK_CTL,
    CLK_LOW_FREQ, CLK_LOW_FREQ);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CARD_CLK_SOURCE, 0xFF,
    CRC_FIX_CLK | SD30_VAR_CLK0 | SAMPLE_VAR_CLK1);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, CLK_CTL, CLK_LOW_FREQ, 0);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD,
    SD_PUSH_POINT_CTL, 0xFF, 0);
  rtsx_pci_add_cmd(pcr, WRITE_REG_CMD, SD_SAMPLE_POINT_CTL,
    SD20_RX_SEL_MASK, SD20_RX_POS_EDGE);
  break;
 }

 err = rtsx_pci_send_cmd(pcr, 100);

 return err;
}

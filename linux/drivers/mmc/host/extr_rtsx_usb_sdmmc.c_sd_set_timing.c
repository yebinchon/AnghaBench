
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_usb_sdmmc {struct rtsx_ucr* ucr; } ;
struct rtsx_ucr {int dummy; } ;


 int CARD_CLK_SOURCE ;
 int CRC_FIX_CLK ;
 int CRC_VAR_CLK0 ;
 int DDR_VAR_RX_CMD ;
 int DDR_VAR_RX_DAT ;
 int DDR_VAR_TX_CMD_DAT ;





 int MODE_C ;
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
 int SD_ASYNC_FIFO_RST ;
 int SD_CFG1 ;
 int SD_DDR_MODE ;
 int SD_PUSH_POINT_CTL ;
 int SD_SAMPLE_POINT_CTL ;
 int WRITE_REG_CMD ;
 int rtsx_usb_add_cmd (struct rtsx_ucr*,int ,int ,int,int) ;
 int rtsx_usb_init_cmd (struct rtsx_ucr*) ;
 int rtsx_usb_send_cmd (struct rtsx_ucr*,int ,int) ;

__attribute__((used)) static int sd_set_timing(struct rtsx_usb_sdmmc *host,
  unsigned char timing, bool *ddr_mode)
{
 struct rtsx_ucr *ucr = host->ucr;
 int err;

 *ddr_mode = 0;

 rtsx_usb_init_cmd(ucr);

 switch (timing) {
 case 129:
 case 128:
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, SD_CFG1,
    0x0C | SD_ASYNC_FIFO_RST,
    SD_30_MODE | SD_ASYNC_FIFO_RST);
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CARD_CLK_SOURCE, 0xFF,
    CRC_VAR_CLK0 | SD30_FIX_CLK | SAMPLE_VAR_CLK1);
  break;

 case 130:
  *ddr_mode = 1;

  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, SD_CFG1,
    0x0C | SD_ASYNC_FIFO_RST,
    SD_DDR_MODE | SD_ASYNC_FIFO_RST);
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CARD_CLK_SOURCE, 0xFF,
    CRC_VAR_CLK0 | SD30_FIX_CLK | SAMPLE_VAR_CLK1);
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, SD_PUSH_POINT_CTL,
    DDR_VAR_TX_CMD_DAT, DDR_VAR_TX_CMD_DAT);
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, SD_SAMPLE_POINT_CTL,
    DDR_VAR_RX_DAT | DDR_VAR_RX_CMD,
    DDR_VAR_RX_DAT | DDR_VAR_RX_CMD);
  break;

 case 132:
 case 131:
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, SD_CFG1,
    0x0C, SD_20_MODE);
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CARD_CLK_SOURCE, 0xFF,
    CRC_FIX_CLK | SD30_VAR_CLK0 | SAMPLE_VAR_CLK1);
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, SD_PUSH_POINT_CTL,
    SD20_TX_SEL_MASK, SD20_TX_14_AHEAD);
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, SD_SAMPLE_POINT_CTL,
    SD20_RX_SEL_MASK, SD20_RX_14_DELAY);
  break;

 default:
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD,
    SD_CFG1, 0x0C, SD_20_MODE);
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CARD_CLK_SOURCE, 0xFF,
    CRC_FIX_CLK | SD30_VAR_CLK0 | SAMPLE_VAR_CLK1);
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD,
    SD_PUSH_POINT_CTL, 0xFF, 0);
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, SD_SAMPLE_POINT_CTL,
    SD20_RX_SEL_MASK, SD20_RX_POS_EDGE);
  break;
 }

 err = rtsx_usb_send_cmd(ucr, MODE_C, 100);

 return err;
}

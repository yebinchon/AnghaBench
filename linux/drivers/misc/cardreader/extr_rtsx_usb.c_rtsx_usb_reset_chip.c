
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtsx_ucr {scalar_t__ is_rts5179; } ;


 int CARD_DMA1_CTL ;
 int CARD_DRIVE_SEL ;
 int CARD_INT_PEND ;
 int CARD_PULL_CTL1 ;
 int CARD_PULL_CTL5 ;
 int CARD_PULL_CTL6 ;
 int CARD_PWR_CTL ;
 int CD_DEGLITCH_EN ;
 int CD_DEGLITCH_WIDTH ;
 int CFG_MODE ;
 scalar_t__ CHECK_PKG (struct rtsx_ucr*,int ) ;
 int CLK_MODE_MASK ;
 int CLK_MODE_NON_XTAL ;
 int DRIVER_TYPE_D ;
 int EXTEND_DMA1_ASYNC_SIGNAL ;
 int FORCE_LDO_POWERB ;
 int LDO3318_PWR_MASK ;
 int LDO_POWER_CFG ;
 int LDO_SUSPEND ;
 int LQFP48 ;
 int MODE_C ;
 int MS_INT ;
 int NYET_EN ;
 int NYET_MSAK ;
 int SD20_DRIVE_MASK ;
 int SD30_DRIVE_MASK ;
 int SD30_DRIVE_SEL ;
 int SD_INT ;
 int SYS_DUMMY0 ;
 int WRITE_REG_CMD ;
 int XD_CD_DEGLITCH_EN ;
 int XD_INT ;
 int XTAL_FREE ;
 int rtsx_usb_add_cmd (struct rtsx_ucr*,int ,int ,int,int) ;
 int rtsx_usb_init_cmd (struct rtsx_ucr*) ;
 int rtsx_usb_read_register (struct rtsx_ucr*,int ,int*) ;
 int rtsx_usb_send_cmd (struct rtsx_ucr*,int ,int) ;
 int rtsx_usb_write_phy_register (struct rtsx_ucr*,int,int) ;

__attribute__((used)) static int rtsx_usb_reset_chip(struct rtsx_ucr *ucr)
{
 int ret;
 u8 val;

 rtsx_usb_init_cmd(ucr);

 if (CHECK_PKG(ucr, LQFP48)) {
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CARD_PWR_CTL,
    LDO3318_PWR_MASK, LDO_SUSPEND);
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CARD_PWR_CTL,
    FORCE_LDO_POWERB, FORCE_LDO_POWERB);
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CARD_PULL_CTL1,
    0x30, 0x10);
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CARD_PULL_CTL5,
    0x03, 0x01);
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CARD_PULL_CTL6,
    0x0C, 0x04);
 }

 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, SYS_DUMMY0, NYET_MSAK, NYET_EN);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CD_DEGLITCH_WIDTH, 0xFF, 0x08);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD,
   CD_DEGLITCH_EN, XD_CD_DEGLITCH_EN, 0x0);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, SD30_DRIVE_SEL,
   SD30_DRIVE_MASK, DRIVER_TYPE_D);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD,
   CARD_DRIVE_SEL, SD20_DRIVE_MASK, 0x0);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, LDO_POWER_CFG, 0xE0, 0x0);

 if (ucr->is_rts5179)
  rtsx_usb_add_cmd(ucr, WRITE_REG_CMD,
    CARD_PULL_CTL5, 0x03, 0x01);

 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CARD_DMA1_CTL,
         EXTEND_DMA1_ASYNC_SIGNAL, EXTEND_DMA1_ASYNC_SIGNAL);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CARD_INT_PEND,
   XD_INT | MS_INT | SD_INT,
   XD_INT | MS_INT | SD_INT);

 ret = rtsx_usb_send_cmd(ucr, MODE_C, 100);
 if (ret)
  return ret;


 rtsx_usb_read_register(ucr, CFG_MODE, &val);
 if ((val & XTAL_FREE) || ((val & CLK_MODE_MASK) == CLK_MODE_NON_XTAL)) {
  ret = rtsx_usb_write_phy_register(ucr, 0xC2, 0x7C);
  if (ret)
   return ret;
 }

 return 0;
}

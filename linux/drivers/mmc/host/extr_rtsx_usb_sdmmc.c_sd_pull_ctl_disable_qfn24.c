
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_ucr {int dummy; } ;


 int CARD_PULL_CTL1 ;
 int CARD_PULL_CTL2 ;
 int CARD_PULL_CTL3 ;
 int CARD_PULL_CTL4 ;
 int CARD_PULL_CTL5 ;
 int CARD_PULL_CTL6 ;
 int MODE_C ;
 int WRITE_REG_CMD ;
 int rtsx_usb_add_cmd (struct rtsx_ucr*,int ,int ,int,int) ;
 int rtsx_usb_init_cmd (struct rtsx_ucr*) ;
 int rtsx_usb_send_cmd (struct rtsx_ucr*,int ,int) ;

__attribute__((used)) static int sd_pull_ctl_disable_qfn24(struct rtsx_ucr *ucr)
{
 rtsx_usb_init_cmd(ucr);

 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CARD_PULL_CTL1, 0xFF, 0x65);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CARD_PULL_CTL2, 0xFF, 0x55);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CARD_PULL_CTL3, 0xFF, 0x95);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CARD_PULL_CTL4, 0xFF, 0x55);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CARD_PULL_CTL5, 0xFF, 0x56);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, CARD_PULL_CTL6, 0xFF, 0x59);

 return rtsx_usb_send_cmd(ucr, MODE_C, 100);
}

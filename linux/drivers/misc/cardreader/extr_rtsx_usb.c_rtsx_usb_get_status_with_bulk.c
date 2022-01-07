
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtsx_ucr {int* rsp_buf; } ;


 int CARD_EXIST ;
 int MODE_CR ;
 int OCPSTAT ;
 int READ_REG_CMD ;
 int rtsx_usb_add_cmd (struct rtsx_ucr*,int ,int ,int,int) ;
 int rtsx_usb_get_rsp (struct rtsx_ucr*,int,int) ;
 int rtsx_usb_init_cmd (struct rtsx_ucr*) ;
 int rtsx_usb_send_cmd (struct rtsx_ucr*,int ,int) ;

__attribute__((used)) static int rtsx_usb_get_status_with_bulk(struct rtsx_ucr *ucr, u16 *status)
{
 int ret;

 rtsx_usb_init_cmd(ucr);
 rtsx_usb_add_cmd(ucr, READ_REG_CMD, CARD_EXIST, 0x00, 0x00);
 rtsx_usb_add_cmd(ucr, READ_REG_CMD, OCPSTAT, 0x00, 0x00);
 ret = rtsx_usb_send_cmd(ucr, MODE_CR, 100);
 if (ret)
  return ret;

 ret = rtsx_usb_get_rsp(ucr, 2, 100);
 if (ret)
  return ret;

 *status = ((ucr->rsp_buf[0] >> 2) & 0x0f) |
    ((ucr->rsp_buf[1] & 0x03) << 4);

 return 0;
}

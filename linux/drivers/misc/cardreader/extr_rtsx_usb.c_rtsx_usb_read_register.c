
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtsx_ucr {int * rsp_buf; } ;


 int MODE_CR ;
 int READ_REG_CMD ;
 int rtsx_usb_add_cmd (struct rtsx_ucr*,int ,int ,int ,int ) ;
 int rtsx_usb_get_rsp (struct rtsx_ucr*,int,int) ;
 int rtsx_usb_init_cmd (struct rtsx_ucr*) ;
 int rtsx_usb_send_cmd (struct rtsx_ucr*,int ,int) ;

int rtsx_usb_read_register(struct rtsx_ucr *ucr, u16 addr, u8 *data)
{
 int ret;

 if (data != ((void*)0))
  *data = 0;

 rtsx_usb_init_cmd(ucr);
 rtsx_usb_add_cmd(ucr, READ_REG_CMD, addr, 0, 0);
 ret = rtsx_usb_send_cmd(ucr, MODE_CR, 100);
 if (ret)
  return ret;

 ret = rtsx_usb_get_rsp(ucr, 1, 100);
 if (ret)
  return ret;

 if (data != ((void*)0))
  *data = ucr->rsp_buf[0];

 return 0;
}

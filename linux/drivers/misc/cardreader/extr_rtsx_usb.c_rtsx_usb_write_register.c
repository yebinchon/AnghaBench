
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rtsx_ucr {int dummy; } ;


 int MODE_C ;
 int WRITE_REG_CMD ;
 int rtsx_usb_add_cmd (struct rtsx_ucr*,int ,int ,int ,int ) ;
 int rtsx_usb_init_cmd (struct rtsx_ucr*) ;
 int rtsx_usb_send_cmd (struct rtsx_ucr*,int ,int) ;

int rtsx_usb_write_register(struct rtsx_ucr *ucr, u16 addr, u8 mask, u8 data)
{
 rtsx_usb_init_cmd(ucr);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, addr, mask, data);
 return rtsx_usb_send_cmd(ucr, MODE_C, 100);
}

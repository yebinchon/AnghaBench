
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtsx_ucr {TYPE_1__* pusb_intf; } ;
struct TYPE_2__ {int dev; } ;


 int HS_VCONTROL ;
 int HS_VLOADM ;
 int HS_VSTAIN ;
 int MODE_C ;
 int WRITE_REG_CMD ;
 int dev_dbg (int *,char*,int,int) ;
 int rtsx_usb_add_cmd (struct rtsx_ucr*,int ,int ,int,int) ;
 int rtsx_usb_init_cmd (struct rtsx_ucr*) ;
 int rtsx_usb_send_cmd (struct rtsx_ucr*,int ,int) ;

__attribute__((used)) static int rtsx_usb_write_phy_register(struct rtsx_ucr *ucr, u8 addr, u8 val)
{
 dev_dbg(&ucr->pusb_intf->dev, "Write 0x%x to phy register 0x%x\n",
   val, addr);

 rtsx_usb_init_cmd(ucr);

 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, HS_VSTAIN, 0xFF, val);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, HS_VCONTROL, 0xFF, addr & 0x0F);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, HS_VLOADM, 0xFF, 0x00);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, HS_VLOADM, 0xFF, 0x00);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, HS_VLOADM, 0xFF, 0x01);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, HS_VCONTROL,
   0xFF, (addr >> 4) & 0x0F);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, HS_VLOADM, 0xFF, 0x00);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, HS_VLOADM, 0xFF, 0x00);
 rtsx_usb_add_cmd(ucr, WRITE_REG_CMD, HS_VLOADM, 0xFF, 0x01);

 return rtsx_usb_send_cmd(ucr, MODE_C, 100);
}

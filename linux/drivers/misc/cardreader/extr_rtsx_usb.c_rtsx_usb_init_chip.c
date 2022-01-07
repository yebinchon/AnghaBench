
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtsx_ucr {int ic_version; int is_rts5179; TYPE_1__* pusb_intf; int package; } ;
struct TYPE_2__ {int dev; } ;


 int CARD_SHARE_LQFP_SEL ;
 int CARD_SHARE_MODE ;
 int CFG_MODE_1 ;
 int CLK_CHANGE ;
 int CLK_DIV ;
 int FPDCTL ;
 int HW_VERSION ;
 int HW_VER_MASK ;
 int LQFP48 ;
 int QFN24 ;
 int RTS5179 ;
 int SSC_POWER_MASK ;
 int SSC_POWER_ON ;
 int dev_dbg (int *,char*) ;
 int rtsx_usb_clear_fsm_err (struct rtsx_ucr*) ;
 int rtsx_usb_read_register (struct rtsx_ucr*,int ,int*) ;
 int rtsx_usb_reset_chip (struct rtsx_ucr*) ;
 int rtsx_usb_write_register (struct rtsx_ucr*,int ,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rtsx_usb_init_chip(struct rtsx_ucr *ucr)
{
 int ret;
 u8 val;

 rtsx_usb_clear_fsm_err(ucr);


 ret = rtsx_usb_write_register(ucr,
   FPDCTL, SSC_POWER_MASK, SSC_POWER_ON);
 if (ret)
  return ret;

 usleep_range(100, 1000);
 ret = rtsx_usb_write_register(ucr, CLK_DIV, CLK_CHANGE, 0x00);
 if (ret)
  return ret;


 ret = rtsx_usb_read_register(ucr, HW_VERSION, &val);
 if (ret)
  return ret;

 ucr->ic_version = val & HW_VER_MASK;


 ret = rtsx_usb_read_register(ucr, CARD_SHARE_MODE, &val);
 if (ret)
  return ret;

 if (val & CARD_SHARE_LQFP_SEL) {
  ucr->package = LQFP48;
  dev_dbg(&ucr->pusb_intf->dev, "Package: LQFP48\n");
 } else {
  ucr->package = QFN24;
  dev_dbg(&ucr->pusb_intf->dev, "Package: QFN24\n");
 }


 rtsx_usb_read_register(ucr, CFG_MODE_1, &val);
 if (val & RTS5179) {
  ucr->is_rts5179 = 1;
  dev_dbg(&ucr->pusb_intf->dev, "Device is rts5179\n");
 } else {
  ucr->is_rts5179 = 0;
 }

 return rtsx_usb_reset_chip(ucr);
}

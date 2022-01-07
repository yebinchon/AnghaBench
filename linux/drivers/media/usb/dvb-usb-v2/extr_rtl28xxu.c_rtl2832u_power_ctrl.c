
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_usb_device {TYPE_1__* intf; int udev; } ;
struct TYPE_2__ {int dev; } ;


 int SYS_DEMOD_CTL ;
 int SYS_DEMOD_CTL1 ;
 int SYS_GPIO_OUT_VAL ;
 int USB_EPA_CTL ;
 int dev_dbg (int *,char*,int) ;
 int rtl28xxu_wr_reg_mask (struct dvb_usb_device*,int ,int,int) ;
 int rtl28xxu_wr_regs (struct dvb_usb_device*,int ,char*,int) ;
 int usb_clear_halt (int ,int ) ;
 int usb_rcvbulkpipe (int ,int) ;

__attribute__((used)) static int rtl2832u_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 int ret;

 dev_dbg(&d->intf->dev, "onoff=%d\n", onoff);

 if (onoff) {

  ret = rtl28xxu_wr_reg_mask(d, SYS_GPIO_OUT_VAL, 0x08, 0x18);
  if (ret)
   goto err;


  ret = rtl28xxu_wr_reg_mask(d, SYS_DEMOD_CTL1, 0x00, 0x10);
  if (ret)
   goto err;


  ret = rtl28xxu_wr_reg_mask(d, SYS_DEMOD_CTL, 0x80, 0x80);
  if (ret)
   goto err;


  ret = rtl28xxu_wr_reg_mask(d, SYS_DEMOD_CTL, 0x20, 0x20);
  if (ret)
   goto err;


  ret = rtl28xxu_wr_regs(d, USB_EPA_CTL, "\x00\x00", 2);
  if (ret)
   goto err;

  ret = usb_clear_halt(d->udev, usb_rcvbulkpipe(d->udev, 0x81));
  if (ret)
   goto err;
 } else {

  ret = rtl28xxu_wr_reg_mask(d, SYS_GPIO_OUT_VAL, 0x10, 0x10);
  if (ret)
   goto err;


  ret = rtl28xxu_wr_reg_mask(d, SYS_DEMOD_CTL, 0x00, 0x80);
  if (ret)
   goto err;


  ret = rtl28xxu_wr_regs(d, USB_EPA_CTL, "\x10\x02", 2);
  if (ret)
   goto err;
 }

 return ret;
err:
 dev_dbg(&d->intf->dev, "failed=%d\n", ret);
 return ret;
}

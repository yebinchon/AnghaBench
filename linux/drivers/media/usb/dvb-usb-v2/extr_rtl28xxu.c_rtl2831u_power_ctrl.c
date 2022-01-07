
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dvb_usb_device {TYPE_1__* intf; int udev; } ;
struct TYPE_2__ {int dev; } ;


 int SYS_GPIO_OUT_VAL ;
 int SYS_SYS0 ;
 int USB_EPA_CTL ;
 int dev_dbg (int *,char*,int,...) ;
 int rtl28xxu_rd_reg (struct dvb_usb_device*,int ,int*) ;
 int rtl28xxu_wr_reg (struct dvb_usb_device*,int ,int) ;
 int rtl28xxu_wr_regs (struct dvb_usb_device*,int ,int*,int) ;
 int usb_clear_halt (int ,int ) ;
 int usb_rcvbulkpipe (int ,int) ;

__attribute__((used)) static int rtl2831u_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 int ret;
 u8 gpio, sys0, epa_ctl[2];

 dev_dbg(&d->intf->dev, "onoff=%d\n", onoff);


 ret = rtl28xxu_rd_reg(d, SYS_SYS0, &sys0);
 if (ret)
  goto err;


 ret = rtl28xxu_rd_reg(d, SYS_GPIO_OUT_VAL, &gpio);
 if (ret)
  goto err;

 dev_dbg(&d->intf->dev, "RD SYS0=%02x GPIO_OUT_VAL=%02x\n", sys0, gpio);

 if (onoff) {
  gpio |= 0x01;
  gpio &= (~0x10);
  gpio |= 0x04;
  sys0 = sys0 & 0x0f;
  sys0 |= 0xe0;
  epa_ctl[0] = 0x00;
  epa_ctl[1] = 0x00;
 } else {
  gpio &= (~0x01);
  gpio |= 0x10;
  gpio &= (~0x04);
  sys0 = sys0 & (~0xc0);
  epa_ctl[0] = 0x10;
  epa_ctl[1] = 0x02;
 }

 dev_dbg(&d->intf->dev, "WR SYS0=%02x GPIO_OUT_VAL=%02x\n", sys0, gpio);


 ret = rtl28xxu_wr_reg(d, SYS_SYS0, sys0);
 if (ret)
  goto err;


 ret = rtl28xxu_wr_reg(d, SYS_GPIO_OUT_VAL, gpio);
 if (ret)
  goto err;


 ret = rtl28xxu_wr_regs(d, USB_EPA_CTL, epa_ctl, 2);
 if (ret)
  goto err;

 if (onoff)
  usb_clear_halt(d->udev, usb_rcvbulkpipe(d->udev, 0x81));

 return ret;
err:
 dev_dbg(&d->intf->dev, "failed=%d\n", ret);
 return ret;
}

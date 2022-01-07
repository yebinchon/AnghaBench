
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dvb_usb_device {TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;


 int USB_EPA_FIFO_CFG ;
 int USB_EPA_MAXPKT ;
 int USB_SYSCTL_0 ;
 int dev_dbg (int *,char*,...) ;
 int rtl28xxu_rd_reg (struct dvb_usb_device*,int ,int*) ;
 int rtl28xxu_wr_reg (struct dvb_usb_device*,int ,int) ;
 int rtl28xxu_wr_regs (struct dvb_usb_device*,int ,char*,int) ;

__attribute__((used)) static int rtl28xxu_init(struct dvb_usb_device *d)
{
 int ret;
 u8 val;

 dev_dbg(&d->intf->dev, "\n");


 ret = rtl28xxu_rd_reg(d, USB_SYSCTL_0, &val);
 if (ret)
  goto err;


 val |= 0x09;
 ret = rtl28xxu_wr_reg(d, USB_SYSCTL_0, val);
 if (ret)
  goto err;


 ret = rtl28xxu_wr_regs(d, USB_EPA_MAXPKT, "\x00\x02\x00\x00", 4);
 if (ret)
  goto err;


 ret = rtl28xxu_wr_regs(d, USB_EPA_FIFO_CFG, "\x14\x00\x00\x00", 4);
 if (ret)
  goto err;

 return ret;
err:
 dev_dbg(&d->intf->dev, "failed=%d\n", ret);
 return ret;
}

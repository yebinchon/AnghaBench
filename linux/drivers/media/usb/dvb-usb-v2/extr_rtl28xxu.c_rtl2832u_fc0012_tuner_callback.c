
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dvb_usb_device {TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;

 int SYS_GPIO_OUT_VAL ;
 int dev_dbg (int *,char*,int,...) ;
 int rtl28xxu_rd_reg (struct dvb_usb_device*,int ,int*) ;
 int rtl28xxu_wr_reg (struct dvb_usb_device*,int ,int) ;

__attribute__((used)) static int rtl2832u_fc0012_tuner_callback(struct dvb_usb_device *d,
  int cmd, int arg)
{
 int ret;
 u8 val;

 dev_dbg(&d->intf->dev, "cmd=%d arg=%d\n", cmd, arg);

 switch (cmd) {
 case 128:

  ret = rtl28xxu_rd_reg(d, SYS_GPIO_OUT_VAL, &val);
  if (ret)
   goto err;

  if (arg)
   val &= 0xbf;
  else
   val |= 0x40;


  ret = rtl28xxu_wr_reg(d, SYS_GPIO_OUT_VAL, val);
  if (ret)
   goto err;
  break;
 default:
  ret = -EINVAL;
  goto err;
 }
 return 0;
err:
 dev_dbg(&d->intf->dev, "failed=%d\n", ret);
 return ret;
}

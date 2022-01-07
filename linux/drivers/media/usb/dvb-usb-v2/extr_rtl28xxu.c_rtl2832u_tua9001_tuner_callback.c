
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dvb_usb_device {TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;


 int SYS_GPIO_OUT_VAL ;


 int dev_dbg (int *,char*,int,...) ;
 int rtl28xxu_wr_reg_mask (struct dvb_usb_device*,int ,int,int) ;

__attribute__((used)) static int rtl2832u_tua9001_tuner_callback(struct dvb_usb_device *d,
  int cmd, int arg)
{
 int ret;
 u8 val;

 dev_dbg(&d->intf->dev, "cmd=%d arg=%d\n", cmd, arg);







 switch (cmd) {
 case 129:
  if (arg)
   val = (1 << 4);
  else
   val = (0 << 4);

  ret = rtl28xxu_wr_reg_mask(d, SYS_GPIO_OUT_VAL, val, 0x10);
  if (ret)
   goto err;
  break;
 case 128:
  if (arg)
   val = (1 << 1);
  else
   val = (0 << 1);

  ret = rtl28xxu_wr_reg_mask(d, SYS_GPIO_OUT_VAL, val, 0x02);
  if (ret)
   goto err;
  break;
 }

 return 0;
err:
 dev_dbg(&d->intf->dev, "failed=%d\n", ret);
 return ret;
}

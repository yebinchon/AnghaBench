
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtl28xxu_req {int member_0; int * member_3; int member_2; int member_1; } ;
struct rtl28xxu_dev {int chip_id; } ;
struct TYPE_3__ {int retries; int timeout; } ;
struct dvb_usb_device {TYPE_2__* intf; TYPE_1__ i2c_adap; } ;
struct TYPE_4__ {int dev; } ;


 int CHIP_ID_RTL2831U ;
 int CHIP_ID_RTL2832U ;
 int CMD_I2C_DA_RD ;
 int EPIPE ;
 int WARM ;
 struct rtl28xxu_dev* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,int) ;
 int msecs_to_jiffies (int) ;
 int rtl28xxu_ctrl_msg (struct dvb_usb_device*,struct rtl28xxu_req*) ;

__attribute__((used)) static int rtl28xxu_identify_state(struct dvb_usb_device *d, const char **name)
{
 struct rtl28xxu_dev *dev = d_to_priv(d);
 int ret;
 struct rtl28xxu_req req_demod_i2c = {0x0020, CMD_I2C_DA_RD, 0, ((void*)0)};

 dev_dbg(&d->intf->dev, "\n");





 ret = rtl28xxu_ctrl_msg(d, &req_demod_i2c);
 if (ret == -EPIPE) {
  dev->chip_id = CHIP_ID_RTL2831U;
 } else if (ret == 0) {
  dev->chip_id = CHIP_ID_RTL2832U;
 } else {
  dev_err(&d->intf->dev, "chip type detection failed %d\n", ret);
  goto err;
 }
 dev_dbg(&d->intf->dev, "chip_id=%u\n", dev->chip_id);


 d->i2c_adap.retries = 3;
 d->i2c_adap.timeout = msecs_to_jiffies(10);

 return WARM;
err:
 dev_dbg(&d->intf->dev, "failed=%d\n", ret);
 return ret;
}

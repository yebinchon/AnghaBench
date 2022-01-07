
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct mceusb_dev* priv; } ;
struct mceusb_dev {int wideband_rx_enabled; int dev; } ;
typedef int cmdbuf ;


 int MCE_CMD_PORT_IR ;
 int MCE_CMD_SETIRRXPORTEN ;
 int dev_dbg (int ,char*,char*) ;
 int mce_command_out (struct mceusb_dev*,unsigned char*,int) ;

__attribute__((used)) static int mceusb_set_rx_wideband(struct rc_dev *dev, int enable)
{
 struct mceusb_dev *ir = dev->priv;
 unsigned char cmdbuf[3] = { MCE_CMD_PORT_IR,
        MCE_CMD_SETIRRXPORTEN, 0x00 };

 dev_dbg(ir->dev, "select %s-range receive sensor",
  enable ? "short" : "long");
 if (enable) {
  ir->wideband_rx_enabled = 1;
  cmdbuf[2] = 2;
 } else {
  ir->wideband_rx_enabled = 0;
  cmdbuf[2] = 1;
 }
 mce_command_out(ir, cmdbuf, sizeof(cmdbuf));


 return 0;
}

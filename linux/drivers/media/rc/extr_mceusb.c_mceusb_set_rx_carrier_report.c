
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct mceusb_dev* priv; } ;
struct mceusb_dev {int carrier_report_enabled; int wideband_rx_enabled; scalar_t__ learning_active; int dev; } ;
typedef int cmdbuf ;


 int MCE_CMD_PORT_IR ;
 int MCE_CMD_SETIRRXPORTEN ;
 int dev_dbg (int ,char*,char*) ;
 int mce_command_out (struct mceusb_dev*,unsigned char*,int) ;

__attribute__((used)) static int mceusb_set_rx_carrier_report(struct rc_dev *dev, int enable)
{
 struct mceusb_dev *ir = dev->priv;
 unsigned char cmdbuf[3] = { MCE_CMD_PORT_IR,
        MCE_CMD_SETIRRXPORTEN, 0x00 };

 dev_dbg(ir->dev, "%s short-range receiver carrier reporting",
  enable ? "enable" : "disable");
 if (enable) {
  ir->carrier_report_enabled = 1;
  if (!ir->learning_active) {
   cmdbuf[2] = 2;
   mce_command_out(ir, cmdbuf, sizeof(cmdbuf));
  }
 } else {
  ir->carrier_report_enabled = 0;





  if (ir->learning_active && !ir->wideband_rx_enabled) {
   cmdbuf[2] = 1;
   mce_command_out(ir, cmdbuf, sizeof(cmdbuf));
  }
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rc_dev {struct mceusb_dev* priv; } ;
struct mceusb_dev {int carrier; int dev; } ;
typedef int cmdbuf ;


 int EINVAL ;
 int MCE_CMD_PORT_IR ;
 int MCE_CMD_SETIRCFS ;
 unsigned char MCE_CMD_SIG_END ;
 unsigned char MCE_IRDATA_TRAILER ;
 int dev_dbg (int ,char*,...) ;
 int mce_command_out (struct mceusb_dev*,unsigned char*,int) ;

__attribute__((used)) static int mceusb_set_tx_carrier(struct rc_dev *dev, u32 carrier)
{
 struct mceusb_dev *ir = dev->priv;
 int clk = 10000000;
 int prescaler = 0, divisor = 0;
 unsigned char cmdbuf[4] = { MCE_CMD_PORT_IR,
        MCE_CMD_SETIRCFS, 0x00, 0x00 };


 if (ir->carrier != carrier) {

  if (carrier == 0) {
   ir->carrier = carrier;
   cmdbuf[2] = MCE_CMD_SIG_END;
   cmdbuf[3] = MCE_IRDATA_TRAILER;
   dev_dbg(ir->dev, "disabling carrier modulation");
   mce_command_out(ir, cmdbuf, sizeof(cmdbuf));
   return 0;
  }

  for (prescaler = 0; prescaler < 4; ++prescaler) {
   divisor = (clk >> (2 * prescaler)) / carrier;
   if (divisor <= 0xff) {
    ir->carrier = carrier;
    cmdbuf[2] = prescaler;
    cmdbuf[3] = divisor;
    dev_dbg(ir->dev, "requesting %u HZ carrier",
        carrier);


    mce_command_out(ir, cmdbuf, sizeof(cmdbuf));
    return 0;
   }
  }

  return -EINVAL;

 }

 return 0;
}

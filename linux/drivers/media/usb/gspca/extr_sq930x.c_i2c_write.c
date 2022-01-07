
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sensor_s {int i2c_addr; int i2c_dum; } ;
struct gspca_dev {int usb_err; int * usb_buf; int dev; } ;
struct sd {size_t sensor; struct gspca_dev gspca_dev; } ;
struct i2c_write_cmd {int val; int reg; } ;


 int D_USBO ;
 int SQ930_CTRL_I2C_IO ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int,int,int ,int ) ;
 int pr_err (char*,int) ;
 struct sensor_s* sensor_tb ;
 int usb_control_msg (int ,int ,int,int,int,int,int *,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static void i2c_write(struct sd *sd,
   const struct i2c_write_cmd *cmd,
   int ncmds)
{
 struct gspca_dev *gspca_dev = &sd->gspca_dev;
 const struct sensor_s *sensor;
 u16 val, idx;
 u8 *buf;
 int ret;

 if (gspca_dev->usb_err < 0)
  return;

 sensor = &sensor_tb[sd->sensor];

 val = (sensor->i2c_addr << 8) | SQ930_CTRL_I2C_IO;
 idx = (cmd->val & 0xff00) | cmd->reg;

 buf = gspca_dev->usb_buf;
 *buf++ = sensor->i2c_dum;
 *buf++ = cmd->val;

 while (--ncmds > 0) {
  cmd++;
  *buf++ = cmd->reg;
  *buf++ = cmd->val >> 8;
  *buf++ = sensor->i2c_dum;
  *buf++ = cmd->val;
 }

 gspca_dbg(gspca_dev, D_USBO, "i2c_w v: %04x i: %04x %02x...%02x\n",
    val, idx, gspca_dev->usb_buf[0], buf[-1]);
 ret = usb_control_msg(gspca_dev->dev,
   usb_sndctrlpipe(gspca_dev->dev, 0),
   0x0c,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   val, idx,
   gspca_dev->usb_buf, buf - gspca_dev->usb_buf,
   500);
 if (ret < 0) {
  pr_err("i2c_write failed %d\n", ret);
  gspca_dev->usb_err = ret;
 }
}

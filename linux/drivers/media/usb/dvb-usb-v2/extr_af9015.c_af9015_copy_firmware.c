
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_interface {int dev; } ;
struct req_t {int member_2; int member_5; int* member_6; int member_4; int member_3; int member_1; int member_0; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct af9015_state {int firmware_size; int firmware_checksum; int * af9013_i2c_addr; int regmap; } ;


 int COPY_FIRMWARE ;
 int ENODEV ;
 int ETIMEDOUT ;
 int af9015_ctrl_msg (struct dvb_usb_device*,struct req_t*) ;
 int af9015_read_reg_i2c (struct dvb_usb_device*,int ,int,int*) ;
 int af9015_write_reg_i2c (struct dvb_usb_device*,int ,int,int) ;
 struct af9015_state* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,...) ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int regmap_write (int ,int,int) ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int af9015_copy_firmware(struct dvb_usb_device *d)
{
 struct af9015_state *state = d_to_priv(d);
 struct usb_interface *intf = d->intf;
 int ret;
 unsigned long timeout;
 u8 val, firmware_info[4];
 struct req_t req = {COPY_FIRMWARE, 0, 0x5100, 0, 0, 4, firmware_info};

 dev_dbg(&intf->dev, "\n");

 firmware_info[0] = (state->firmware_size >> 8) & 0xff;
 firmware_info[1] = (state->firmware_size >> 0) & 0xff;
 firmware_info[2] = (state->firmware_checksum >> 8) & 0xff;
 firmware_info[3] = (state->firmware_checksum >> 0) & 0xff;


 ret = af9015_read_reg_i2c(d, state->af9013_i2c_addr[1], 0x98be, &val);
 if (ret)
  goto err;

 dev_dbg(&intf->dev, "firmware status %02x\n", val);

 if (val == 0x0c)
  return 0;


 ret = regmap_write(state->regmap, 0xd416, 0x04);
 if (ret)
  goto err;


 ret = af9015_ctrl_msg(d, &req);
 if (ret) {
  dev_err(&intf->dev, "firmware copy cmd failed %d\n", ret);
  goto err;
 }


 ret = regmap_write(state->regmap, 0xd416, 0x14);
 if (ret)
  goto err;


 ret = af9015_write_reg_i2c(d, state->af9013_i2c_addr[1], 0xe205, 0x01);
 if (ret)
  goto err;


 for (val = 0x00, timeout = jiffies + msecs_to_jiffies(1000);
      !time_after(jiffies, timeout) && val != 0x0c && val != 0x04;) {
  msleep(20);


  ret = af9015_read_reg_i2c(d, state->af9013_i2c_addr[1],
       0x98be, &val);
  if (ret)
   goto err;

  dev_dbg(&intf->dev, "firmware status %02x\n", val);
 }

 dev_dbg(&intf->dev, "firmware boot took %u ms\n",
  jiffies_to_msecs(jiffies) - (jiffies_to_msecs(timeout) - 1000));

 if (val == 0x04) {
  ret = -ENODEV;
  dev_err(&intf->dev, "firmware did not run\n");
  goto err;
 } else if (val != 0x0c) {
  ret = -ETIMEDOUT;
  dev_err(&intf->dev, "firmware boot timeout\n");
  goto err;
 }

 return 0;
err:
 dev_dbg(&intf->dev, "failed %d\n", ret);
 return ret;
}

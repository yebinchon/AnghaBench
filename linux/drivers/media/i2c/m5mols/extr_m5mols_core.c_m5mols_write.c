
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct v4l2_subdev {int dummy; } ;
struct m5mols_info {scalar_t__ isp_ready; } ;
struct i2c_msg {int* buf; scalar_t__ len; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;


 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int I2C_CATEGORY (int ) ;
 int I2C_COMMAND (int ) ;
 int I2C_SIZE (int ) ;
 int M5MOLS_BYTE_WRITE ;
 int M5MOLS_I2C_MAX_SIZE ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int m5mols_swap_byte (int*,int) ;
 struct m5mols_info* to_m5mols (struct v4l2_subdev*) ;
 int usleep_range (int,int) ;
 int v4l2_err (struct v4l2_subdev*,char*,...) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

int m5mols_write(struct v4l2_subdev *sd, u32 reg, u32 val)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct m5mols_info *info = to_m5mols(sd);
 u8 wbuf[M5MOLS_I2C_MAX_SIZE + 4];
 u8 category = I2C_CATEGORY(reg);
 u8 cmd = I2C_COMMAND(reg);
 u8 size = I2C_SIZE(reg);
 u32 *buf = (u32 *)&wbuf[4];
 struct i2c_msg msg[1];
 int ret;

 if (!client->adapter)
  return -ENODEV;

 if (size != 1 && size != 2 && size != 4) {
  v4l2_err(sd, "Wrong data size\n");
  return -EINVAL;
 }

 msg->addr = client->addr;
 msg->flags = 0;
 msg->len = (u16)size + 4;
 msg->buf = wbuf;
 wbuf[0] = size + 4;
 wbuf[1] = M5MOLS_BYTE_WRITE;
 wbuf[2] = category;
 wbuf[3] = cmd;

 *buf = m5mols_swap_byte((u8 *)&val, size);


 usleep_range(200, 300);

 ret = i2c_transfer(client->adapter, msg, 1);
 if (ret == 1)
  return 0;

 if (info->isp_ready)
  v4l2_err(sd, "write failed: cat:%02x cmd:%02x ret:%d\n",
    category, cmd, ret);

 return ret < 0 ? ret : -EIO;
}

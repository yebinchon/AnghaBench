
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_msg {int len; scalar_t__* buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
struct et8ek8_sensor {scalar_t__* priv_mem; } ;
typedef int buffer ;


 int EIO ;
 int ET8EK8_I2C_DELAY ;
 unsigned int ET8EK8_PRIV_MEM_SIZE ;
 int ET8EK8_REG_8BIT ;
 scalar_t__ I2C_M_RD ;
 scalar_t__ PRIV_MEM_START_REG ;
 int PRIV_MEM_WIN_SIZE ;
 int et8ek8_i2c_read_reg (struct i2c_client*,int ,int,int*) ;
 int et8ek8_i2c_write_reg (struct i2c_client*,int ,int,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int mdelay (int ) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int memset (scalar_t__*,int ,int) ;
 struct et8ek8_sensor* to_et8ek8_sensor (struct v4l2_subdev*) ;
 int usleep_range (int,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int et8ek8_g_priv_mem(struct v4l2_subdev *subdev)
{
 struct et8ek8_sensor *sensor = to_et8ek8_sensor(subdev);
 struct i2c_client *client = v4l2_get_subdevdata(subdev);
 unsigned int length = ET8EK8_PRIV_MEM_SIZE;
 unsigned int offset = 0;
 u8 *ptr = sensor->priv_mem;
 int rval = 0;


 do {
  u8 buffer[PRIV_MEM_WIN_SIZE];
  struct i2c_msg msg;
  int bytes, i;
  int ofs;


  rval = et8ek8_i2c_write_reg(client, ET8EK8_REG_8BIT, 0x0001,
         0xe0 | (offset >> 3));
  if (rval < 0)
   return rval;


  for (i = 0; i < 1000; ++i) {
   u32 status;

   rval = et8ek8_i2c_read_reg(client, ET8EK8_REG_8BIT,
         0x0003, &status);
   if (rval < 0)
    return rval;
   if (!(status & 0x08))
    break;
   usleep_range(1000, 2000);
  }

  if (i == 1000)
   return -EIO;


  ofs = offset & 0x07;
  bytes = length + ofs > 8 ? 8-ofs : length;
  msg.addr = client->addr;
  msg.flags = 0;
  msg.len = 2;
  msg.buf = buffer;
  ofs += PRIV_MEM_START_REG;
  buffer[0] = (u8)(ofs >> 8);
  buffer[1] = (u8)(ofs & 0xFF);

  rval = i2c_transfer(client->adapter, &msg, 1);
  if (rval < 0)
   return rval;

  mdelay(ET8EK8_I2C_DELAY);
  msg.addr = client->addr;
  msg.len = bytes;
  msg.flags = I2C_M_RD;
  msg.buf = buffer;
  memset(buffer, 0, sizeof(buffer));

  rval = i2c_transfer(client->adapter, &msg, 1);
  if (rval < 0)
   return rval;

  rval = 0;
  memcpy(ptr, buffer, bytes);

  length -= bytes;
  offset += bytes;
  ptr += bytes;
 } while (length > 0);

 return rval;
}

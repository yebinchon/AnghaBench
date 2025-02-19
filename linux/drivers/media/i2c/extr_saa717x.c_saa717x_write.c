
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_msg {int len; unsigned char* buf; int addr; scalar_t__ flags; } ;
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int debug ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int saa717x_write(struct v4l2_subdev *sd, u32 reg, u32 value)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct i2c_adapter *adap = client->adapter;
 int fw_addr = reg == 0x454 || (reg >= 0x464 && reg <= 0x478) || reg == 0x480 || reg == 0x488;
 unsigned char mm1[6];
 struct i2c_msg msg;

 msg.flags = 0;
 msg.addr = client->addr;
 mm1[0] = (reg >> 8) & 0xff;
 mm1[1] = reg & 0xff;

 if (fw_addr) {
  mm1[4] = (value >> 16) & 0xff;
  mm1[3] = (value >> 8) & 0xff;
  mm1[2] = value & 0xff;
 } else {
  mm1[2] = value & 0xff;
 }
 msg.len = fw_addr ? 5 : 3;
 msg.buf = mm1;
 v4l2_dbg(2, debug, sd, "wrote:  reg 0x%03x=%08x\n", reg, value);
 return i2c_transfer(adap, &msg, 1) == 1;
}

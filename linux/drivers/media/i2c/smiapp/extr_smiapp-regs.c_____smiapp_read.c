
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned char u8 ;
typedef unsigned char u32 ;
typedef int u16 ;
struct smiapp_sensor {TYPE_1__* src; } ;
struct i2c_msg {int len; unsigned char* buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;
struct TYPE_2__ {int sd; } ;


 int BUG () ;
 int EBUSY ;
 scalar_t__ I2C_M_RD ;



 int dev_err (int *,char*,int,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int ____smiapp_read(struct smiapp_sensor *sensor, u16 reg,
      u16 len, u32 *val)
{
 struct i2c_client *client = v4l2_get_subdevdata(&sensor->src->sd);
 struct i2c_msg msg;
 unsigned char data[4];
 u16 offset = reg;
 int r;

 msg.addr = client->addr;
 msg.flags = 0;
 msg.len = 2;
 msg.buf = data;


 data[0] = (u8) (offset >> 8);
 data[1] = (u8) offset;
 r = i2c_transfer(client->adapter, &msg, 1);
 if (r != 1) {
  if (r >= 0)
   r = -EBUSY;
  goto err;
 }

 msg.len = len;
 msg.flags = I2C_M_RD;
 r = i2c_transfer(client->adapter, &msg, 1);
 if (r != 1) {
  if (r >= 0)
   r = -EBUSY;
  goto err;
 }

 *val = 0;

 switch (len) {
 case 129:
  *val = (data[0] << 24) + (data[1] << 16) + (data[2] << 8) +
   data[3];
  break;
 case 130:
  *val = (data[0] << 8) + data[1];
  break;
 case 128:
  *val = data[0];
  break;
 default:
  BUG();
 }

 return 0;

err:
 dev_err(&client->dev, "read from offset 0x%x error %d\n", offset, r);

 return r;
}

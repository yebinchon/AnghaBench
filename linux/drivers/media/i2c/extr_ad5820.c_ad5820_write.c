
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int len; int * buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;
struct ad5820_device {int subdev; } ;
typedef int __be16 ;


 int ENODEV ;
 int cpu_to_be16 (int ) ;
 int dev_err (int *,char*,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 struct i2c_client* v4l2_get_subdevdata (int *) ;

__attribute__((used)) static int ad5820_write(struct ad5820_device *coil, u16 data)
{
 struct i2c_client *client = v4l2_get_subdevdata(&coil->subdev);
 struct i2c_msg msg;
 __be16 be_data;
 int r;

 if (!client->adapter)
  return -ENODEV;

 be_data = cpu_to_be16(data);
 msg.addr = client->addr;
 msg.flags = 0;
 msg.len = 2;
 msg.buf = (u8 *)&be_data;

 r = i2c_transfer(client->adapter, &msg, 1);
 if (r < 0) {
  dev_err(&client->dev, "write failed, error %d\n", r);
  return r;
 }

 return 0;
}

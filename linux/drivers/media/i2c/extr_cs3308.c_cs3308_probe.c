
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int cs3308_ops ;
 int cs3308_write (struct v4l2_subdev*,int,int) ;
 int i2c_check_functionality (TYPE_1__*,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 struct v4l2_subdev* kzalloc (int,int ) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int cs3308_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct v4l2_subdev *sd;
 unsigned i;


 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 if ((i2c_smbus_read_byte_data(client, 0x1c) & 0xf0) != 0xe0)
  return -ENODEV;

 v4l_info(client, "chip found @ 0x%x (%s)\n",
   client->addr << 1, client->adapter->name);

 sd = kzalloc(sizeof(struct v4l2_subdev), GFP_KERNEL);
 if (sd == ((void*)0))
  return -ENOMEM;

 v4l2_i2c_subdev_init(sd, client, &cs3308_ops);


 cs3308_write(sd, 0x0d, 0x00);
 cs3308_write(sd, 0x0e, 0x00);
 cs3308_write(sd, 0x0b, 0x00);

 for (i = 1; i <= 8; i++)
  cs3308_write(sd, i, 0xd2);
 cs3308_write(sd, 0x0a, 0x00);
 return 0;
}

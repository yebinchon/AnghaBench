
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct ks0127 {struct v4l2_subdev sd; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int addr; int dev; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_KS0127_ADDON ;
 int KS_CMDA ;
 struct ks0127* devm_kzalloc (int *,int,int ) ;
 int init_reg_defaults () ;
 int ks0127_init (struct v4l2_subdev*) ;
 int ks0127_ops ;
 int ks0127_write (struct v4l2_subdev*,int ,int) ;
 int mdelay (int) ;
 int v4l2_i2c_subdev_init (struct v4l2_subdev*,struct i2c_client*,int *) ;
 int v4l_info (struct i2c_client*,char*,char*,int,int ) ;

__attribute__((used)) static int ks0127_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct ks0127 *ks;
 struct v4l2_subdev *sd;

 v4l_info(client, "%s chip found @ 0x%x (%s)\n",
  client->addr == (I2C_KS0127_ADDON >> 1) ? "addon" : "on-board",
  client->addr << 1, client->adapter->name);

 ks = devm_kzalloc(&client->dev, sizeof(*ks), GFP_KERNEL);
 if (ks == ((void*)0))
  return -ENOMEM;
 sd = &ks->sd;
 v4l2_i2c_subdev_init(sd, client, &ks0127_ops);


 init_reg_defaults();
 ks0127_write(sd, KS_CMDA, 0x2c);
 mdelay(10);


 ks0127_init(sd);
 return 0;
}

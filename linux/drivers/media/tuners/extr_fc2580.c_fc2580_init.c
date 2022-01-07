
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_client {int dev; } ;
struct fc2580_dev {int active; int regmap; struct i2c_client* client; } ;
struct TYPE_3__ {int val; int reg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int dev_dbg (int *,char*,...) ;
 TYPE_1__* fc2580_init_reg_vals ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int fc2580_init(struct fc2580_dev *dev)
{
 struct i2c_client *client = dev->client;
 int ret, i;

 dev_dbg(&client->dev, "\n");

 for (i = 0; i < ARRAY_SIZE(fc2580_init_reg_vals); i++) {
  ret = regmap_write(dev->regmap, fc2580_init_reg_vals[i].reg,
    fc2580_init_reg_vals[i].val);
  if (ret)
   goto err;
 }

 dev->active = 1;
 return 0;
err:
 dev_dbg(&client->dev, "failed=%d\n", ret);
 return ret;
}

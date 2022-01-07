
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stw481x {int map; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;
struct TYPE_4__ {int pdata_size; struct stw481x* platform_data; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 struct stw481x* devm_kzalloc (int *,int,int ) ;
 int devm_mfd_add_devices (int *,int ,TYPE_1__*,int,int *,int ,int *) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct stw481x*) ;
 TYPE_1__* stw481x_cells ;
 int stw481x_regmap_config ;
 int stw481x_startup (struct stw481x*) ;

__attribute__((used)) static int stw481x_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct stw481x *stw481x;
 int ret;
 int i;

 stw481x = devm_kzalloc(&client->dev, sizeof(*stw481x), GFP_KERNEL);
 if (!stw481x)
  return -ENOMEM;

 i2c_set_clientdata(client, stw481x);
 stw481x->client = client;
 stw481x->map = devm_regmap_init_i2c(client, &stw481x_regmap_config);
 if (IS_ERR(stw481x->map)) {
  ret = PTR_ERR(stw481x->map);
  dev_err(&client->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 ret = stw481x_startup(stw481x);
 if (ret) {
  dev_err(&client->dev, "chip initialization failed\n");
  return ret;
 }


 for (i = 0; i < ARRAY_SIZE(stw481x_cells); i++) {

  stw481x_cells[i].platform_data = stw481x;
  stw481x_cells[i].pdata_size = sizeof(*stw481x);
 }

 ret = devm_mfd_add_devices(&client->dev, 0, stw481x_cells,
       ARRAY_SIZE(stw481x_cells), ((void*)0), 0, ((void*)0));
 if (ret)
  return ret;

 dev_info(&client->dev, "initialized STw481x device\n");

 return ret;
}

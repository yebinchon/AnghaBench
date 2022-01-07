
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct of_device_id {void* data; } ;
struct mc13xxx {void* variant; int regmap; int irq; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct TYPE_6__ {scalar_t__ of_node; } ;
struct i2c_client {TYPE_1__ dev; int irq; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_1__*,char*,int) ;
 int dev_set_drvdata (TYPE_1__*,struct mc13xxx*) ;
 struct mc13xxx* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int mc13xxx_common_init (TYPE_1__*) ;
 int mc13xxx_dt_ids ;
 int mc13xxx_regmap_i2c_config ;
 struct of_device_id* of_match_device (int ,TYPE_1__*) ;

__attribute__((used)) static int mc13xxx_i2c_probe(struct i2c_client *client,
  const struct i2c_device_id *id)
{
 struct mc13xxx *mc13xxx;
 int ret;

 mc13xxx = devm_kzalloc(&client->dev, sizeof(*mc13xxx), GFP_KERNEL);
 if (!mc13xxx)
  return -ENOMEM;

 dev_set_drvdata(&client->dev, mc13xxx);

 mc13xxx->irq = client->irq;

 mc13xxx->regmap = devm_regmap_init_i2c(client,
            &mc13xxx_regmap_i2c_config);
 if (IS_ERR(mc13xxx->regmap)) {
  ret = PTR_ERR(mc13xxx->regmap);
  dev_err(&client->dev, "Failed to initialize regmap: %d\n", ret);
  return ret;
 }

 if (client->dev.of_node) {
  const struct of_device_id *of_id =
   of_match_device(mc13xxx_dt_ids, &client->dev);
  mc13xxx->variant = of_id->data;
 } else {
  mc13xxx->variant = (void *)id->driver_data;
 }

 return mc13xxx_common_init(&client->dev);
}

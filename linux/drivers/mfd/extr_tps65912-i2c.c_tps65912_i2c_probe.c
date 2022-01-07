
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps65912 {int regmap; int * dev; int irq; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int irq; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 struct tps65912* devm_kzalloc (int *,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct tps65912*) ;
 int tps65912_device_init (struct tps65912*) ;
 int tps65912_regmap_config ;

__attribute__((used)) static int tps65912_i2c_probe(struct i2c_client *client,
         const struct i2c_device_id *ids)
{
 struct tps65912 *tps;

 tps = devm_kzalloc(&client->dev, sizeof(*tps), GFP_KERNEL);
 if (!tps)
  return -ENOMEM;

 i2c_set_clientdata(client, tps);
 tps->dev = &client->dev;
 tps->irq = client->irq;

 tps->regmap = devm_regmap_init_i2c(client, &tps65912_regmap_config);
 if (IS_ERR(tps->regmap)) {
  dev_err(tps->dev, "Failed to initialize register map\n");
  return PTR_ERR(tps->regmap);
 }

 return tps65912_device_init(tps);
}

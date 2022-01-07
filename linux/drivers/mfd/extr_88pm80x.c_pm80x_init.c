
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct pm80x_chip {struct i2c_client* client; struct i2c_client* companion; int * dev; int type; struct regmap* regmap; int irq; } ;
struct i2c_client {int dev; int irq; } ;
struct TYPE_3__ {scalar_t__ id; int type; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PM80X_CHIP_ID ;
 scalar_t__ PM80X_CHIP_ID_NUM (unsigned int) ;
 int PTR_ERR (struct regmap*) ;
 TYPE_1__* chip_mapping ;
 int dev_err (int *,char*,unsigned int) ;
 int dev_set_drvdata (int *,struct pm80x_chip*) ;
 int device_init_wakeup (int *,int) ;
 struct pm80x_chip* devm_kzalloc (int *,int,int ) ;
 struct regmap* devm_regmap_init_i2c (struct i2c_client*,int *) ;
 struct pm80x_chip* g_pm80x_chip ;
 int i2c_set_clientdata (struct i2c_client*,struct pm80x_chip*) ;
 int pm80x_regmap_config ;
 int regmap_read (struct regmap*,int ,unsigned int*) ;

int pm80x_init(struct i2c_client *client)
{
 struct pm80x_chip *chip;
 struct regmap *map;
 unsigned int val;
 int i, ret = 0;

 chip =
     devm_kzalloc(&client->dev, sizeof(struct pm80x_chip), GFP_KERNEL);
 if (!chip)
  return -ENOMEM;

 map = devm_regmap_init_i2c(client, &pm80x_regmap_config);
 if (IS_ERR(map)) {
  ret = PTR_ERR(map);
  dev_err(&client->dev, "Failed to allocate register map: %d\n",
   ret);
  return ret;
 }

 chip->client = client;
 chip->regmap = map;

 chip->irq = client->irq;

 chip->dev = &client->dev;
 dev_set_drvdata(chip->dev, chip);
 i2c_set_clientdata(chip->client, chip);

 ret = regmap_read(chip->regmap, PM80X_CHIP_ID, &val);
 if (ret < 0) {
  dev_err(chip->dev, "Failed to read CHIP ID: %d\n", ret);
  return ret;
 }

 for (i = 0; i < ARRAY_SIZE(chip_mapping); i++) {
  if (chip_mapping[i].id == PM80X_CHIP_ID_NUM(val)) {
   chip->type = chip_mapping[i].type;
   break;
  }
 }

 if (i == ARRAY_SIZE(chip_mapping)) {
  dev_err(chip->dev,
   "Failed to detect Marvell 88PM800:ChipID[0x%x]\n", val);
  return -EINVAL;
 }

 device_init_wakeup(&client->dev, 1);







 if (!g_pm80x_chip)
  g_pm80x_chip = chip;
 else {
  chip->companion = g_pm80x_chip->client;
  g_pm80x_chip->companion = chip->client;
 }

 return 0;
}

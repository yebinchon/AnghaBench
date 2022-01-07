
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tps6105x {TYPE_1__* client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int TPS6105X_REG0_MODE_SHIFT ;




 int TPS6105X_REG_0 ;
 int dev_info (int *,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int tps6105x_startup(struct tps6105x *tps6105x)
{
 int ret;
 unsigned int regval;

 ret = regmap_read(tps6105x->regmap, TPS6105X_REG_0, &regval);
 if (ret)
  return ret;
 switch (regval >> TPS6105X_REG0_MODE_SHIFT) {
 case 131:
  dev_info(&tps6105x->client->dev,
    "TPS6105x found in SHUTDOWN mode\n");
  break;
 case 130:
  dev_info(&tps6105x->client->dev,
    "TPS6105x found in TORCH mode\n");
  break;
 case 129:
  dev_info(&tps6105x->client->dev,
    "TPS6105x found in FLASH mode\n");
  break;
 case 128:
  dev_info(&tps6105x->client->dev,
    "TPS6105x found in VOLTAGE mode\n");
  break;
 default:
  break;
 }

 return ret;
}

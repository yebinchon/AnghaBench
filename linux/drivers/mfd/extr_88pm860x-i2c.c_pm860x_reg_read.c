
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct pm860x_chip {struct regmap* regmap_companion; struct regmap* regmap; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 struct pm860x_chip* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_read (struct regmap*,int,unsigned int*) ;

int pm860x_reg_read(struct i2c_client *i2c, int reg)
{
 struct pm860x_chip *chip = i2c_get_clientdata(i2c);
 struct regmap *map = (i2c == chip->client) ? chip->regmap
    : chip->regmap_companion;
 unsigned int data;
 int ret;

 ret = regmap_read(map, reg, &data);
 if (ret < 0)
  return ret;
 else
  return (int)data;
}

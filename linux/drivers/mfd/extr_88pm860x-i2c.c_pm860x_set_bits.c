
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct pm860x_chip {struct regmap* regmap_companion; struct regmap* regmap; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 struct pm860x_chip* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_update_bits (struct regmap*,int,unsigned char,unsigned char) ;

int pm860x_set_bits(struct i2c_client *i2c, int reg,
      unsigned char mask, unsigned char data)
{
 struct pm860x_chip *chip = i2c_get_clientdata(i2c);
 struct regmap *map = (i2c == chip->client) ? chip->regmap
    : chip->regmap_companion;
 int ret;

 ret = regmap_update_bits(map, reg, mask, data);
 return ret;
}

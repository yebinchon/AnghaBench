
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct adv748x_state {struct regmap** regmap; } ;


 size_t I2C_SMBUS_BLOCK_MAX ;
 int regmap_raw_write (struct regmap*,unsigned int,void const*,size_t) ;

int adv748x_write_block(struct adv748x_state *state, int client_page,
   unsigned int init_reg, const void *val,
   size_t val_len)
{
 struct regmap *regmap = state->regmap[client_page];

 if (val_len > I2C_SMBUS_BLOCK_MAX)
  val_len = I2C_SMBUS_BLOCK_MAX;

 return regmap_raw_write(regmap, init_reg, val, val_len);
}

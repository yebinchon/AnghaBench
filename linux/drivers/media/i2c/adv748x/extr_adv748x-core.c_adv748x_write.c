
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct adv748x_state {int * regmap; } ;


 int regmap_write (int ,size_t,size_t) ;

int adv748x_write(struct adv748x_state *state, u8 page, u8 reg, u8 value)
{
 return regmap_write(state->regmap[page], reg, value);
}

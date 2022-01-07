
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct adv76xx_state {int * regmap; TYPE_1__* info; } ;
struct TYPE_2__ {int page_mask; } ;


 unsigned int ADV76XX_PAGE_MAX ;
 int BIT (unsigned int) ;
 int EINVAL ;
 int regmap_write (int ,unsigned int,int ) ;
 struct adv76xx_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int adv76xx_write_reg(struct v4l2_subdev *sd, unsigned int reg, u8 val)
{
 struct adv76xx_state *state = to_state(sd);
 unsigned int page = reg >> 8;

 if (page >= ADV76XX_PAGE_MAX || !(BIT(page) & state->info->page_mask))
  return -EINVAL;

 reg &= 0xff;

 return regmap_write(state->regmap[page], reg, val);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct adv76xx_state {int * regmap; } ;


 size_t ADV76XX_PAGE_REP ;
 int regmap_write (int ,int ,int ) ;
 struct adv76xx_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static inline int rep_write(struct v4l2_subdev *sd, u8 reg, u8 val)
{
 struct adv76xx_state *state = to_state(sd);

 return regmap_write(state->regmap[ADV76XX_PAGE_REP], reg, val);
}

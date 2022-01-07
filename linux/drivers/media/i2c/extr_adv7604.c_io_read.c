
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct adv76xx_state {int dummy; } ;


 int ADV76XX_PAGE_IO ;
 int adv76xx_read_check (struct adv76xx_state*,int ,int ) ;
 struct adv76xx_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static inline int io_read(struct v4l2_subdev *sd, u8 reg)
{
 struct adv76xx_state *state = to_state(sd);

 return adv76xx_read_check(state, ADV76XX_PAGE_IO, reg);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adv76xx_state {int dummy; } ;


 scalar_t__ adv76xx_has_afe (struct adv76xx_state*) ;
 int cp_read (struct v4l2_subdev*,int) ;
 struct adv76xx_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static inline bool no_lock_sspd(struct v4l2_subdev *sd)
{
 struct adv76xx_state *state = to_state(sd);





 if (adv76xx_has_afe(state))
  return 0;


 return ((cp_read(sd, 0xb5) & 0xd0) != 0xd0);
}

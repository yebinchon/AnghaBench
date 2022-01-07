
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct saa711x_state {int radio; } ;


 struct saa711x_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int saa711x_s_radio(struct v4l2_subdev *sd)
{
 struct saa711x_state *state = to_state(sd);

 state->radio = 1;
 return 0;
}

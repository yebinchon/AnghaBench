
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct saa711x_state {scalar_t__ radio; } ;


 int saa711x_set_v4lstd (struct v4l2_subdev*,int ) ;
 struct saa711x_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int saa711x_s_std(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct saa711x_state *state = to_state(sd);

 state->radio = 0;
 saa711x_set_v4lstd(sd, std);
 return 0;
}

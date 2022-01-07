
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ths7303_state {int stream_on; } ;


 int ths7303_config (struct v4l2_subdev*) ;
 struct ths7303_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ths7303_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct ths7303_state *state = to_state(sd);

 state->stream_on = enable;

 return ths7303_config(sd);
}

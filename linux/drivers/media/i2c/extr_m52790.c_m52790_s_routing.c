
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct v4l2_subdev {int dummy; } ;
struct m52790_state {void* output; void* input; } ;


 int m52790_write (struct v4l2_subdev*) ;
 struct m52790_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int m52790_s_routing(struct v4l2_subdev *sd,
       u32 input, u32 output, u32 config)
{
 struct m52790_state *state = to_state(sd);

 state->input = input;
 state->output = output;
 m52790_write(sd);
 return 0;
}

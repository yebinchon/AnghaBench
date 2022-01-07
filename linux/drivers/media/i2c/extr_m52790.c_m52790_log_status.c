
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct m52790_state {int input; int output; } ;


 struct m52790_state* to_state (struct v4l2_subdev*) ;
 int v4l2_info (struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int m52790_log_status(struct v4l2_subdev *sd)
{
 struct m52790_state *state = to_state(sd);

 v4l2_info(sd, "Switch 1: %02x\n",
   (state->input | state->output) & 0xff);
 v4l2_info(sd, "Switch 2: %02x\n",
   (state->input | state->output) >> 8);
 return 0;
}

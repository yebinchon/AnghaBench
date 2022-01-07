
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct tw2804 {int norm; char* channel; char* input; } ;


 int V4L2_STD_525_60 ;
 struct tw2804* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_subdev_log_status (struct v4l2_subdev*) ;
 int v4l2_info (struct v4l2_subdev*,char*,char*) ;

__attribute__((used)) static int tw2804_log_status(struct v4l2_subdev *sd)
{
 struct tw2804 *state = to_state(sd);

 v4l2_info(sd, "Standard: %s\n",
   state->norm & V4L2_STD_525_60 ? "60 Hz" : "50 Hz");
 v4l2_info(sd, "Channel: %d\n", state->channel);
 v4l2_info(sd, "Input: %d\n", state->input);
 return v4l2_ctrl_subdev_log_status(sd);
}

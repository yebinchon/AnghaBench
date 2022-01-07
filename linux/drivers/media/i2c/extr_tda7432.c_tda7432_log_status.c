
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; } ;
struct tda7432 {int hdl; } ;


 struct tda7432* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_log_status (int *,int ) ;

__attribute__((used)) static int tda7432_log_status(struct v4l2_subdev *sd)
{
 struct tda7432 *state = to_state(sd);

 v4l2_ctrl_handler_log_status(&state->hdl, sd->name);
 return 0;
}

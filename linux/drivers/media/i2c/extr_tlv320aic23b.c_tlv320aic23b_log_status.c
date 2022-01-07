
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; } ;
struct tlv320aic23b_state {int hdl; } ;


 struct tlv320aic23b_state* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_log_status (int *,int ) ;

__attribute__((used)) static int tlv320aic23b_log_status(struct v4l2_subdev *sd)
{
 struct tlv320aic23b_state *state = to_state(sd);

 v4l2_ctrl_handler_log_status(&state->hdl, sd->name);
 return 0;
}

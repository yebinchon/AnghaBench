
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int name; int ctrl_handler; } ;
struct s5c73m3 {int apply_fmt; int power; } ;


 struct s5c73m3* oif_sd_to_s5c73m3 (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_log_status (int ,int ) ;
 int v4l2_info (struct v4l2_subdev*,char*,int ,int ) ;

__attribute__((used)) static int s5c73m3_oif_log_status(struct v4l2_subdev *sd)
{
 struct s5c73m3 *state = oif_sd_to_s5c73m3(sd);

 v4l2_ctrl_handler_log_status(sd->ctrl_handler, sd->name);

 v4l2_info(sd, "power: %d, apply_fmt: %d\n", state->power,
       state->apply_fmt);

 return 0;
}

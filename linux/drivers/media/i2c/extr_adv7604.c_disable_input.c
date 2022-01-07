
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct adv76xx_state {TYPE_1__* info; } ;
struct TYPE_2__ {int (* set_termination ) (struct v4l2_subdev*,int) ;} ;


 int hdmi_write_clr_set (struct v4l2_subdev*,int,int,int) ;
 int io_write (struct v4l2_subdev*,int,int) ;
 int msleep (int) ;
 int stub1 (struct v4l2_subdev*,int) ;
 struct adv76xx_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static void disable_input(struct v4l2_subdev *sd)
{
 struct adv76xx_state *state = to_state(sd);

 hdmi_write_clr_set(sd, 0x1a, 0x10, 0x10);
 msleep(16);
 io_write(sd, 0x15, 0xbe);
 state->info->set_termination(sd, 0);
}

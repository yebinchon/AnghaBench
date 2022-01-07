
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ad9389b_state {int have_monitor; } ;
struct ad9389b_monitor_detect {int present; } ;


 int AD9389B_MONITOR_DETECT ;
 struct ad9389b_state* get_ad9389b_state (struct v4l2_subdev*) ;
 int v4l2_subdev_notify (struct v4l2_subdev*,int ,void*) ;

__attribute__((used)) static void ad9389b_notify_monitor_detect(struct v4l2_subdev *sd)
{
 struct ad9389b_monitor_detect mdt;
 struct ad9389b_state *state = get_ad9389b_state(sd);

 mdt.present = state->have_monitor;
 v4l2_subdev_notify(sd, AD9389B_MONITOR_DETECT, (void *)&mdt);
}

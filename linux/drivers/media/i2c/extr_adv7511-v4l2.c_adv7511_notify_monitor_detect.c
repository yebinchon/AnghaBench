
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adv7511_state {int have_monitor; } ;
struct adv7511_monitor_detect {int present; } ;


 int ADV7511_MONITOR_DETECT ;
 struct adv7511_state* get_adv7511_state (struct v4l2_subdev*) ;
 int v4l2_subdev_notify (struct v4l2_subdev*,int ,void*) ;

__attribute__((used)) static void adv7511_notify_monitor_detect(struct v4l2_subdev *sd)
{
 struct adv7511_monitor_detect mdt;
 struct adv7511_state *state = get_adv7511_state(sd);

 mdt.present = state->have_monitor;
 v4l2_subdev_notify(sd, ADV7511_MONITOR_DETECT, (void *)&mdt);
}

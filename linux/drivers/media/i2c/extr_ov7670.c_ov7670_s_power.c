
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov7670_info {int on; int hdl; } ;


 int ov7670_apply_fmt (struct v4l2_subdev*) ;
 int ov7670_init (struct v4l2_subdev*,int ) ;
 int ov7670_power_off (struct v4l2_subdev*) ;
 int ov7670_power_on (struct v4l2_subdev*) ;
 int ov7675_apply_framerate (struct v4l2_subdev*) ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int ov7670_s_power(struct v4l2_subdev *sd, int on)
{
 struct ov7670_info *info = to_state(sd);

 if (info->on == on)
  return 0;

 if (on) {
  ov7670_power_on (sd);
  ov7670_init(sd, 0);
  ov7670_apply_fmt(sd);
  ov7675_apply_framerate(sd);
  v4l2_ctrl_handler_setup(&info->hdl);
 } else {
  ov7670_power_off (sd);
 }

 return 0;
}

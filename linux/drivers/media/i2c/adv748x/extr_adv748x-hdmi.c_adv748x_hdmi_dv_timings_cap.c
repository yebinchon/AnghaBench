
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_dv_timings_cap {int dummy; } ;


 struct v4l2_dv_timings_cap adv748x_hdmi_timings_cap ;

__attribute__((used)) static int adv748x_hdmi_dv_timings_cap(struct v4l2_subdev *sd,
           struct v4l2_dv_timings_cap *cap)
{
 *cap = adv748x_hdmi_timings_cap;
 return 0;
}

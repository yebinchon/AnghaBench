
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_dv_timings {int dummy; } ;
struct TYPE_3__ {scalar_t__ width; } ;
struct TYPE_4__ {TYPE_1__ bt; } ;
struct adv748x_hdmi_video_standards {TYPE_2__ timings; } ;


 struct adv748x_hdmi_video_standards* adv748x_hdmi_video_standards ;
 scalar_t__ v4l2_match_dv_timings (struct v4l2_dv_timings const*,TYPE_2__*,int ,int) ;

__attribute__((used)) static bool adv748x_hdmi_check_dv_timings(const struct v4l2_dv_timings *timings,
       void *hdl)
{
 const struct adv748x_hdmi_video_standards *stds =
  adv748x_hdmi_video_standards;
 unsigned int i;

 for (i = 0; stds[i].timings.bt.width; i++)
  if (v4l2_match_dv_timings(timings, &stds[i].timings, 0, 0))
   return 1;

 return 0;
}

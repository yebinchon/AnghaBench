
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_dv_timings {int dummy; } ;
struct adv748x_state {int dummy; } ;
struct adv748x_hdmi_video_standards {int vid_std; int v_freq; int timings; } ;


 int ADV748X_IO_DATAPATH ;
 int ADV748X_IO_DATAPATH_VFREQ_M ;
 int ADV748X_IO_DATAPATH_VFREQ_SHIFT ;
 int ADV748X_IO_VID_STD ;
 unsigned int ARRAY_SIZE (struct adv748x_hdmi_video_standards*) ;
 int EINVAL ;
 int adv748x_hdmi_set_de_timings (struct adv748x_state*,int) ;
 struct adv748x_hdmi_video_standards* adv748x_hdmi_video_standards ;
 int io_clrset (struct adv748x_state*,int ,int ,int) ;
 int io_write (struct adv748x_state*,int ,int) ;
 int v4l2_match_dv_timings (struct v4l2_dv_timings const*,int *,int,int) ;

__attribute__((used)) static int adv748x_hdmi_set_video_timings(struct adv748x_state *state,
       const struct v4l2_dv_timings *timings)
{
 const struct adv748x_hdmi_video_standards *stds =
  adv748x_hdmi_video_standards;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(adv748x_hdmi_video_standards); i++) {
  if (!v4l2_match_dv_timings(timings, &stds[i].timings, 250000,
        0))
   continue;
 }

 if (i >= ARRAY_SIZE(adv748x_hdmi_video_standards))
  return -EINVAL;







 switch (stds[i].vid_std) {
 case 0x53:
  adv748x_hdmi_set_de_timings(state, -40);
  break;
 case 0x54:
 case 0x5e:
  adv748x_hdmi_set_de_timings(state, -44);
  break;
 default:
  adv748x_hdmi_set_de_timings(state, 0);
  break;
 }

 io_write(state, ADV748X_IO_VID_STD, stds[i].vid_std);
 io_clrset(state, ADV748X_IO_DATAPATH, ADV748X_IO_DATAPATH_VFREQ_M,
    stds[i].v_freq << ADV748X_IO_DATAPATH_VFREQ_SHIFT);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct v4l2_subdev {int dummy; } ;
struct saa711x_state {int cgcdiv; int audclk_freq; scalar_t__ apll; scalar_t__ ucgc; scalar_t__ double_asclk; scalar_t__ crystal_freq; } ;


 int EINVAL ;
 scalar_t__ SAA7115_FREQ_24_576_MHZ ;
 scalar_t__ SAA7115_FREQ_32_11_MHZ ;
 scalar_t__ SAA7115_FREQ_FL_APLL ;
 scalar_t__ SAA7115_FREQ_FL_CGCDIV ;
 scalar_t__ SAA7115_FREQ_FL_DOUBLE_ASCLK ;
 scalar_t__ SAA7115_FREQ_FL_UCGC ;
 int saa711x_s_clock_freq (struct v4l2_subdev*,int ) ;
 struct saa711x_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int saa711x_s_crystal_freq(struct v4l2_subdev *sd, u32 freq, u32 flags)
{
 struct saa711x_state *state = to_state(sd);

 if (freq != SAA7115_FREQ_32_11_MHZ && freq != SAA7115_FREQ_24_576_MHZ)
  return -EINVAL;
 state->crystal_freq = freq;
 state->double_asclk = flags & SAA7115_FREQ_FL_DOUBLE_ASCLK;
 state->cgcdiv = (flags & SAA7115_FREQ_FL_CGCDIV) ? 3 : 4;
 state->ucgc = flags & SAA7115_FREQ_FL_UCGC;
 state->apll = flags & SAA7115_FREQ_FL_APLL;
 saa711x_s_clock_freq(sd, state->audclk_freq);
 return 0;
}

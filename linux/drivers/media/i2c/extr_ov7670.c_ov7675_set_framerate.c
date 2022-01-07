
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_fract {int numerator; int denominator; } ;
struct ov7670_info {int clock_speed; int clkrc; scalar_t__ on; TYPE_1__* fmt; scalar_t__ pll_bypass; } ;
struct TYPE_2__ {scalar_t__ mbus_code; } ;


 int CLK_EXT ;
 int CLK_SCALE ;
 scalar_t__ MEDIA_BUS_FMT_SBGGR8_1X8 ;
 int PLL_FACTOR ;
 int ov7675_apply_framerate (struct v4l2_subdev*) ;
 int ov7675_get_framerate (struct v4l2_subdev*,struct v4l2_fract*) ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7675_set_framerate(struct v4l2_subdev *sd,
     struct v4l2_fract *tpf)
{
 struct ov7670_info *info = to_state(sd);
 u32 clkrc;
 int pll_factor;
 if (tpf->numerator == 0 || tpf->denominator == 0) {
  clkrc = 0;
 } else {
  pll_factor = info->pll_bypass ? 1 : PLL_FACTOR;
  clkrc = (5 * pll_factor * info->clock_speed * tpf->numerator) /
   (4 * tpf->denominator);
  if (info->fmt->mbus_code == MEDIA_BUS_FMT_SBGGR8_1X8)
   clkrc = (clkrc << 1);
  clkrc--;
 }






 if (clkrc <= 0)
  clkrc = CLK_EXT;
 else if (clkrc > CLK_SCALE)
  clkrc = CLK_SCALE;
 info->clkrc = clkrc;


 ov7675_get_framerate(sd, tpf);






 if (info->on)
  return ov7675_apply_framerate(sd);

 return 0;
}

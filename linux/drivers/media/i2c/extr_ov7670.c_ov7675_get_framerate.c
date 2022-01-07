
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_fract {int numerator; int denominator; } ;
struct ov7670_info {int clkrc; int clock_speed; TYPE_1__* fmt; scalar_t__ pll_bypass; } ;
struct TYPE_2__ {scalar_t__ mbus_code; } ;


 scalar_t__ MEDIA_BUS_FMT_SBGGR8_1X8 ;
 int PLL_FACTOR ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static void ov7675_get_framerate(struct v4l2_subdev *sd,
     struct v4l2_fract *tpf)
{
 struct ov7670_info *info = to_state(sd);
 u32 clkrc = info->clkrc;
 int pll_factor;

 if (info->pll_bypass)
  pll_factor = 1;
 else
  pll_factor = PLL_FACTOR;

 clkrc++;
 if (info->fmt->mbus_code == MEDIA_BUS_FMT_SBGGR8_1X8)
  clkrc = (clkrc >> 1);

 tpf->numerator = 1;
 tpf->denominator = (5 * pll_factor * info->clock_speed) /
   (4 * clkrc);
}

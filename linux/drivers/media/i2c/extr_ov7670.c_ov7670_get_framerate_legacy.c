
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_fract {int numerator; int denominator; } ;
struct ov7670_info {int clock_speed; int clkrc; } ;


 int CLK_EXT ;
 int CLK_SCALE ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static void ov7670_get_framerate_legacy(struct v4l2_subdev *sd,
     struct v4l2_fract *tpf)
{
 struct ov7670_info *info = to_state(sd);

 tpf->numerator = 1;
 tpf->denominator = info->clock_speed;
 if ((info->clkrc & CLK_EXT) == 0 && (info->clkrc & CLK_SCALE) > 1)
  tpf->denominator /= (info->clkrc & CLK_SCALE);
}

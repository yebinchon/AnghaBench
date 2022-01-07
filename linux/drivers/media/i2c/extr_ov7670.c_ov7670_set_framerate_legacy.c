
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_fract {int numerator; int denominator; } ;
struct ov7670_info {int clock_speed; int clkrc; scalar_t__ on; } ;


 int CLK_SCALE ;
 int REG_CLKRC ;
 int ov7670_write (struct v4l2_subdev*,int ,int) ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7670_set_framerate_legacy(struct v4l2_subdev *sd,
     struct v4l2_fract *tpf)
{
 struct ov7670_info *info = to_state(sd);
 int div;

 if (tpf->numerator == 0 || tpf->denominator == 0)
  div = 1;
 else
  div = (tpf->numerator * info->clock_speed) / tpf->denominator;
 if (div == 0)
  div = 1;
 else if (div > CLK_SCALE)
  div = CLK_SCALE;
 info->clkrc = (info->clkrc & 0x80) | div;
 tpf->numerator = 1;
 tpf->denominator = info->clock_speed / div;






 if (info->on)
  return ov7670_write(sd, REG_CLKRC, info->clkrc);

 return 0;
}

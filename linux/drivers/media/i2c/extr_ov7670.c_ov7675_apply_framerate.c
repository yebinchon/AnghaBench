
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct ov7670_info {scalar_t__ pll_bypass; int clkrc; } ;


 int DBLV_BYPASS ;
 int DBLV_X4 ;
 int REG_CLKRC ;
 int REG_DBLV ;
 int ov7670_write (struct v4l2_subdev*,int ,int ) ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int ov7675_apply_framerate(struct v4l2_subdev *sd)
{
 struct ov7670_info *info = to_state(sd);
 int ret;

 ret = ov7670_write(sd, REG_CLKRC, info->clkrc);
 if (ret < 0)
  return ret;

 return ov7670_write(sd, REG_DBLV,
       info->pll_bypass ? DBLV_BYPASS : DBLV_X4);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int ad9389b_wr_and_or (struct v4l2_subdev*,int,int,int) ;

__attribute__((used)) static void ad9389b_set_manual_pll_gear(struct v4l2_subdev *sd, u32 pixelclock)
{
 u8 gear;
 if (pixelclock > 140000000)
  gear = 0xc0;
 else if (pixelclock > 117000000)
  gear = 0xb0;
 else if (pixelclock > 87000000)
  gear = 0xa0;
 else if (pixelclock > 60000000)
  gear = 0x90;
 else
  gear = 0x80;

 ad9389b_wr_and_or(sd, 0x98, 0x0f, gear);
}

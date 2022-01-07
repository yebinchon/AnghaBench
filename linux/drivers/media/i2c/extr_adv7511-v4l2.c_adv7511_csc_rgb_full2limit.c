
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int adv7511_csc_coeff (struct v4l2_subdev*,int,int ,int ,int,int ,int,int ,int,int ,int ,int,int) ;
 int adv7511_csc_conversion_mode (struct v4l2_subdev*,int ) ;
 int adv7511_wr_and_or (struct v4l2_subdev*,int,int,int) ;

__attribute__((used)) static void adv7511_csc_rgb_full2limit(struct v4l2_subdev *sd, bool enable)
{
 if (enable) {
  u8 csc_mode = 0;
  adv7511_csc_conversion_mode(sd, csc_mode);
  adv7511_csc_coeff(sd,
      4096-564, 0, 0, 256,
      0, 4096-564, 0, 256,
      0, 0, 4096-564, 256);

  adv7511_wr_and_or(sd, 0x18, 0x7f, 0x80);

  adv7511_wr_and_or(sd, 0x57, 0xf3, 0x04);
 } else {

  adv7511_wr_and_or(sd, 0x18, 0x7f, 0x0);

  adv7511_wr_and_or(sd, 0x57, 0xf3, 0x08);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;


 int ad9389b_csc_coeff (struct v4l2_subdev*,int,int ,int ,int,int ,int,int ,int,int ,int ,int,int) ;
 int ad9389b_csc_conversion_mode (struct v4l2_subdev*,int ) ;
 int ad9389b_wr_and_or (struct v4l2_subdev*,int,int,int) ;

__attribute__((used)) static void ad9389b_csc_rgb_full2limit(struct v4l2_subdev *sd, bool enable)
{
 if (enable) {
  u8 csc_mode = 0;

  ad9389b_csc_conversion_mode(sd, csc_mode);
  ad9389b_csc_coeff(sd,
      4096-564, 0, 0, 256,
      0, 4096-564, 0, 256,
      0, 0, 4096-564, 256);

  ad9389b_wr_and_or(sd, 0x3b, 0xfe, 0x1);

  ad9389b_wr_and_or(sd, 0xcd, 0xf9, 0x02);
 } else {

  ad9389b_wr_and_or(sd, 0x3b, 0xfe, 0x0);

  ad9389b_wr_and_or(sd, 0xcd, 0xf9, 0x04);
 }
}

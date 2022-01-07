
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int ad9389b_wr_and_or (struct v4l2_subdev*,int,int,int) ;

__attribute__((used)) static int ad9389b_s_i2s_clock_freq(struct v4l2_subdev *sd, u32 freq)
{
 u32 i2s_sf;

 switch (freq) {
 case 32000: i2s_sf = 0x30; break;
 case 44100: i2s_sf = 0x00; break;
 case 48000: i2s_sf = 0x20; break;
 case 88200: i2s_sf = 0x80; break;
 case 96000: i2s_sf = 0xa0; break;
 case 176400: i2s_sf = 0xc0; break;
 case 192000: i2s_sf = 0xe0; break;
 default:
      return -EINVAL;
 }


 ad9389b_wr_and_or(sd, 0x15, 0xf, i2s_sf);

 return 0;
}

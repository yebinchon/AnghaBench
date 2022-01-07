
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int tlv320aic23b_write (struct v4l2_subdev*,int,int) ;

__attribute__((used)) static int tlv320aic23b_s_clock_freq(struct v4l2_subdev *sd, u32 freq)
{
 switch (freq) {
 case 32000:
  tlv320aic23b_write(sd, 8, 0x018);
  break;
 case 44100:
  tlv320aic23b_write(sd, 8, 0x022);
  break;
 case 48000:
  tlv320aic23b_write(sd, 8, 0x000);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int adv7511_wr (struct v4l2_subdev*,int,int) ;

__attribute__((used)) static int adv7511_s_clock_freq(struct v4l2_subdev *sd, u32 freq)
{
 u32 N;

 switch (freq) {
 case 32000: N = 4096; break;
 case 44100: N = 6272; break;
 case 48000: N = 6144; break;
 case 88200: N = 12544; break;
 case 96000: N = 12288; break;
 case 176400: N = 25088; break;
 case 192000: N = 24576; break;
 default:
  return -EINVAL;
 }


 adv7511_wr(sd, 0x01, (N >> 16) & 0xf);
 adv7511_wr(sd, 0x02, (N >> 8) & 0xff);
 adv7511_wr(sd, 0x03, N & 0xff);

 return 0;
}

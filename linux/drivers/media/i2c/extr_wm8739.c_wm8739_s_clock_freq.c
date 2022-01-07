
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wm8739_state {int clock_freq; } ;
struct v4l2_subdev {int dummy; } ;


 int R8 ;
 int R9 ;
 struct wm8739_state* to_state (struct v4l2_subdev*) ;
 int wm8739_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int wm8739_s_clock_freq(struct v4l2_subdev *sd, u32 audiofreq)
{
 struct wm8739_state *state = to_state(sd);

 state->clock_freq = audiofreq;

 wm8739_write(sd, R9, 0x000);
 switch (audiofreq) {
 case 44100:

  wm8739_write(sd, R8, 0x020);
  break;
 case 48000:

  wm8739_write(sd, R8, 0x000);
  break;
 case 32000:

  wm8739_write(sd, R8, 0x018);
  break;
 default:
  break;
 }

 wm8739_write(sd, R9, 0x001);
 return 0;
}

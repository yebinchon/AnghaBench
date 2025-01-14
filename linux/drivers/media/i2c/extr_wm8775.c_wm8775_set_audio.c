
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wm8775_state {int input; TYPE_3__* bal; TYPE_2__* vol; TYPE_1__* mute; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_6__ {scalar_t__ val; } ;
struct TYPE_5__ {scalar_t__ val; } ;
struct TYPE_4__ {scalar_t__ val; } ;


 int R14 ;
 int R15 ;
 int R21 ;
 int min (int,int) ;
 struct wm8775_state* to_state (struct v4l2_subdev*) ;
 int wm8775_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static void wm8775_set_audio(struct v4l2_subdev *sd, int quietly)
{
 struct wm8775_state *state = to_state(sd);
 u8 vol_l, vol_r;
 int muted = 0 != state->mute->val;
 u16 volume = (u16)state->vol->val;
 u16 balance = (u16)state->bal->val;


 vol_l = (min(65536 - balance, 32768) * volume) >> 23;
 vol_r = (min(balance, (u16)32768) * volume) >> 23;


 if (muted || quietly)
  wm8775_write(sd, R21, 0x0c0 | state->input);

 wm8775_write(sd, R14, vol_l | 0x100);
 wm8775_write(sd, R15, vol_r | 0x100);


 if (!muted)
  wm8775_write(sd, R21, state->input);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct tda7432 {TYPE_4__* treble; TYPE_3__* bass; TYPE_2__* mute; TYPE_1__* balance; } ;
struct TYPE_8__ {int val; } ;
struct TYPE_7__ {int val; } ;
struct TYPE_6__ {int val; } ;
struct TYPE_5__ {int val; } ;


 int EINVAL ;
 int TDA7432_ATTEN_0DB ;
 int TDA7432_LD_ON ;
 int TDA7432_LF ;
 int TDA7432_LR ;
 int TDA7432_MUTE ;
 int TDA7432_RF ;
 int TDA7432_RR ;
 int TDA7432_TN ;
 int TDA7432_VL ;



 int loudness ;
 int tda7432_write (struct v4l2_subdev*,int ,int) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 struct tda7432* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int tda7432_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct tda7432 *t = to_state(sd);
 u8 bass, treble, volume;
 u8 lf, lr, rf, rr;

 switch (ctrl->id) {
 case 129:
  if (t->balance->val < 0) {

   rr = rf = -t->balance->val;
   lr = lf = TDA7432_ATTEN_0DB;
  } else if (t->balance->val > 0) {

   rr = rf = TDA7432_ATTEN_0DB;
   lr = lf = t->balance->val;
  } else {

   rr = rf = TDA7432_ATTEN_0DB;
   lr = lf = TDA7432_ATTEN_0DB;
  }
  if (t->mute->val) {
   lf |= TDA7432_MUTE;
   lr |= TDA7432_MUTE;
   rf |= TDA7432_MUTE;
   rr |= TDA7432_MUTE;
  }

  tda7432_write(sd, TDA7432_LF, lf);
  tda7432_write(sd, TDA7432_LR, lr);
  tda7432_write(sd, TDA7432_RF, rf);
  tda7432_write(sd, TDA7432_RR, rr);
  return 0;
 case 128:
  volume = 0x6f - ctrl->val;
  if (loudness)
   volume |= TDA7432_LD_ON;

  tda7432_write(sd, TDA7432_VL, volume);
  return 0;
 case 130:
  bass = t->bass->val;
  treble = t->treble->val;
  if (bass >= 0x8)
   bass = 14 - (bass - 8);
  if (treble >= 0x8)
   treble = 14 - (treble - 8);

  tda7432_write(sd, TDA7432_TN, 0x10 | (bass << 4) | treble);
  return 0;
 }
 return -EINVAL;
}

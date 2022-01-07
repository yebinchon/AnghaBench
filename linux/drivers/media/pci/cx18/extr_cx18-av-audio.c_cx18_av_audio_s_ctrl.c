
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct cx18 {int dummy; } ;


 int EINVAL ;





 int set_balance (struct cx18*,int ) ;
 int set_bass (struct cx18*,int ) ;
 int set_mute (struct cx18*,int ) ;
 int set_treble (struct cx18*,int ) ;
 int set_volume (struct cx18*,int ) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 struct cx18* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cx18_av_audio_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct cx18 *cx = v4l2_get_subdevdata(sd);

 switch (ctrl->id) {
 case 128:
  set_volume(cx, ctrl->val);
  break;
 case 131:
  set_bass(cx, ctrl->val);
  break;
 case 129:
  set_treble(cx, ctrl->val);
  break;
 case 132:
  set_balance(cx, ctrl->val);
  break;
 case 130:
  set_mute(cx, ctrl->val);
  break;
 default:
  return -EINVAL;
 }
 return 0;
}

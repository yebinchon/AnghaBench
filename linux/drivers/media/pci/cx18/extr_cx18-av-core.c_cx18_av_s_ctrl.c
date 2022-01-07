
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct cx18 {int dummy; } ;


 int EINVAL ;




 int cx18_av_write (struct cx18*,int,int) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 struct cx18* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cx18_av_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct cx18 *cx = v4l2_get_subdevdata(sd);

 switch (ctrl->id) {
 case 131:
  cx18_av_write(cx, 0x414, ctrl->val - 128);
  break;

 case 130:
  cx18_av_write(cx, 0x415, ctrl->val << 1);
  break;

 case 128:
  cx18_av_write(cx, 0x420, ctrl->val << 1);
  cx18_av_write(cx, 0x421, ctrl->val << 1);
  break;

 case 129:
  cx18_av_write(cx, 0x422, ctrl->val);
  break;

 default:
  return -EINVAL;
 }
 return 0;
}

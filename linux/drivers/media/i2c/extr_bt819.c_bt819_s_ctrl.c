
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct bt819 {int dummy; } ;


 int EINVAL ;




 int bt819_setbit (struct bt819*,int,int,int) ;
 int bt819_write (struct bt819*,int,int) ;
 struct bt819* to_bt819 (struct v4l2_subdev*) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;

__attribute__((used)) static int bt819_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct bt819 *decoder = to_bt819(sd);
 int temp;

 switch (ctrl->id) {
 case 131:
  bt819_write(decoder, 0x0a, ctrl->val);
  break;

 case 130:
  bt819_write(decoder, 0x0c, ctrl->val & 0xff);
  bt819_setbit(decoder, 0x0b, 2, ((ctrl->val >> 8) & 0x01));
  break;

 case 128:
  bt819_write(decoder, 0x0d, (ctrl->val >> 7) & 0xff);
  bt819_setbit(decoder, 0x0b, 1, ((ctrl->val >> 15) & 0x01));



  temp = (ctrl->val * 180) / 254;
  bt819_write(decoder, 0x0e, (temp >> 7) & 0xff);
  bt819_setbit(decoder, 0x0b, 0, (temp >> 15) & 0x01);
  break;

 case 129:
  bt819_write(decoder, 0x0f, ctrl->val);
  break;

 default:
  return -EINVAL;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;


 int EINVAL ;




 int VS6624_CONTRAST0 ;
 int VS6624_HMIRROR0 ;
 int VS6624_SATURATION0 ;
 int VS6624_VFLIP0 ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 int vs6624_write (struct v4l2_subdev*,int ,int ) ;

__attribute__((used)) static int vs6624_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);

 switch (ctrl->id) {
 case 131:
  vs6624_write(sd, VS6624_CONTRAST0, ctrl->val);
  break;
 case 129:
  vs6624_write(sd, VS6624_SATURATION0, ctrl->val);
  break;
 case 130:
  vs6624_write(sd, VS6624_HMIRROR0, ctrl->val);
  break;
 case 128:
  vs6624_write(sd, VS6624_VFLIP0, ctrl->val);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}

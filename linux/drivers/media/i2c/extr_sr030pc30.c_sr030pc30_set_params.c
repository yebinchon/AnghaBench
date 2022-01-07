
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct sr030pc30_info {TYPE_2__* curr_fmt; TYPE_1__* curr_win; } ;
struct TYPE_4__ {int ispctl1_reg; } ;
struct TYPE_3__ {int vid_ctl1; } ;


 int EINVAL ;
 int ISP_CTL_REG (int ) ;
 int VDO_CTL1_REG ;
 int cam_i2c_write (struct v4l2_subdev*,int ,int ) ;
 int sr030pc30_set_flip (struct v4l2_subdev*) ;
 struct sr030pc30_info* to_sr030pc30 (struct v4l2_subdev*) ;

__attribute__((used)) static int sr030pc30_set_params(struct v4l2_subdev *sd)
{
 struct sr030pc30_info *info = to_sr030pc30(sd);
 int ret;

 if (!info->curr_win)
  return -EINVAL;


 ret = cam_i2c_write(sd, VDO_CTL1_REG,
       info->curr_win->vid_ctl1);

 if (!ret && info->curr_fmt)
  ret = cam_i2c_write(sd, ISP_CTL_REG(0),
    info->curr_fmt->ispctl1_reg);
 if (!ret)
  ret = sr030pc30_set_flip(sd);

 return ret;
}

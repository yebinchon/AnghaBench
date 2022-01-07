
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adv748x_csi2 {int pixel_rate; } ;
typedef int s64 ;


 int EINVAL ;
 struct adv748x_csi2* adv748x_sd_to_csi2 (struct v4l2_subdev*) ;
 int v4l2_ctrl_s_ctrl_int64 (int ,int ) ;

int adv748x_csi2_set_pixelrate(struct v4l2_subdev *sd, s64 rate)
{
 struct adv748x_csi2 *tx = adv748x_sd_to_csi2(sd);

 if (!tx->pixel_rate)
  return -EINVAL;

 return v4l2_ctrl_s_ctrl_int64(tx->pixel_rate, rate);
}

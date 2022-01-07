
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adv748x_csi2 {int * pads; } ;


 size_t ADV748X_CSI2_SINK ;
 int EPIPE ;
 struct v4l2_subdev* adv748x_get_remote_sd (int *) ;
 struct adv748x_csi2* adv748x_sd_to_csi2 (struct v4l2_subdev*) ;
 int s_stream ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int) ;
 int video ;

__attribute__((used)) static int adv748x_csi2_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct adv748x_csi2 *tx = adv748x_sd_to_csi2(sd);
 struct v4l2_subdev *src;

 src = adv748x_get_remote_sd(&tx->pads[ADV748X_CSI2_SINK]);
 if (!src)
  return -EPIPE;

 return v4l2_subdev_call(src, video, s_stream, enable);
}

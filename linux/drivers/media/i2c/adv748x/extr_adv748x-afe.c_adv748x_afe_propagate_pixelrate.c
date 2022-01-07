
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adv748x_afe {int * pads; } ;


 size_t ADV748X_AFE_SOURCE ;
 int ENOLINK ;
 int adv748x_csi2_set_pixelrate (struct v4l2_subdev*,int) ;
 struct v4l2_subdev* adv748x_get_remote_sd (int *) ;

__attribute__((used)) static int adv748x_afe_propagate_pixelrate(struct adv748x_afe *afe)
{
 struct v4l2_subdev *tx;

 tx = adv748x_get_remote_sd(&afe->pads[ADV748X_AFE_SOURCE]);
 if (!tx)
  return -ENOLINK;






 return adv748x_csi2_set_pixelrate(tx, 14318180);
}

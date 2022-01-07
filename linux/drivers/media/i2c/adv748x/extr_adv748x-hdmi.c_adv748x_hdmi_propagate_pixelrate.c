
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int pixelclock; } ;
struct v4l2_dv_timings {TYPE_1__ bt; } ;
struct adv748x_hdmi {int sd; int * pads; } ;


 size_t ADV748X_HDMI_SOURCE ;
 int ENOLINK ;
 int adv748x_csi2_set_pixelrate (struct v4l2_subdev*,int ) ;
 struct v4l2_subdev* adv748x_get_remote_sd (int *) ;
 int adv748x_hdmi_query_dv_timings (int *,struct v4l2_dv_timings*) ;

__attribute__((used)) static int adv748x_hdmi_propagate_pixelrate(struct adv748x_hdmi *hdmi)
{
 struct v4l2_subdev *tx;
 struct v4l2_dv_timings timings;

 tx = adv748x_get_remote_sd(&hdmi->pads[ADV748X_HDMI_SOURCE]);
 if (!tx)
  return -ENOLINK;

 adv748x_hdmi_query_dv_timings(&hdmi->sd, &timings);

 return adv748x_csi2_set_pixelrate(tx, timings.bt.pixelclock);
}

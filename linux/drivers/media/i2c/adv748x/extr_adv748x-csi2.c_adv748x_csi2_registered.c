
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int v4l2_dev; int name; } ;
struct TYPE_4__ {struct adv748x_csi2* tx; int sd; } ;
struct TYPE_3__ {struct adv748x_csi2* tx; int sd; } ;
struct adv748x_state {TYPE_2__ hdmi; TYPE_1__ afe; } ;
struct adv748x_csi2 {struct adv748x_state* state; } ;


 int ADV748X_AFE_SOURCE ;
 int ADV748X_HDMI_SOURCE ;
 int adv748x_csi2_register_link (struct adv748x_csi2*,int ,int *,int ,int) ;
 struct adv748x_csi2* adv748x_sd_to_csi2 (struct v4l2_subdev*) ;
 int adv_dbg (struct adv748x_state*,char*,char*,int ) ;
 scalar_t__ is_afe_enabled (struct adv748x_state*) ;
 int is_hdmi_enabled (struct adv748x_state*) ;
 scalar_t__ is_txa (struct adv748x_csi2*) ;
 int is_txb (struct adv748x_csi2*) ;

__attribute__((used)) static int adv748x_csi2_registered(struct v4l2_subdev *sd)
{
 struct adv748x_csi2 *tx = adv748x_sd_to_csi2(sd);
 struct adv748x_state *state = tx->state;
 int ret;

 adv_dbg(state, "Registered %s (%s)", is_txa(tx) ? "TXA":"TXB",
   sd->name);







 if (is_afe_enabled(state)) {
  ret = adv748x_csi2_register_link(tx, sd->v4l2_dev,
       &state->afe.sd,
       ADV748X_AFE_SOURCE,
       is_txb(tx));
  if (ret)
   return ret;


  if (is_txb(tx))
   state->afe.tx = tx;
 }


 if (is_txb(tx) || !is_hdmi_enabled(state))
  return 0;

 ret = adv748x_csi2_register_link(tx, sd->v4l2_dev, &state->hdmi.sd,
      ADV748X_HDMI_SOURCE, 1);
 if (ret)
  return ret;


 state->hdmi.tx = tx;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int error; } ;
struct TYPE_7__ {TYPE_2__* ctrl_handler; } ;
struct adv7180_state {TYPE_2__ ctrl_hdl; TYPE_1__ sd; } ;


 int ADV7180_BRI_DEF ;
 int ADV7180_BRI_MAX ;
 int ADV7180_BRI_MIN ;
 int ADV7180_CON_DEF ;
 int ADV7180_CON_MAX ;
 int ADV7180_CON_MIN ;
 int ADV7180_HUE_DEF ;
 int ADV7180_HUE_MAX ;
 int ADV7180_HUE_MIN ;
 int ADV7180_SAT_DEF ;
 int ADV7180_SAT_MAX ;
 int ADV7180_SAT_MIN ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HUE ;
 int V4L2_CID_SATURATION ;
 int adv7180_ctrl_fast_switch ;
 int adv7180_ctrl_ops ;
 int v4l2_ctrl_handler_free (TYPE_2__*) ;
 int v4l2_ctrl_handler_init (TYPE_2__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_2__*) ;
 int v4l2_ctrl_new_custom (TYPE_2__*,int *,int *) ;
 int v4l2_ctrl_new_std (TYPE_2__*,int *,int ,int ,int ,int,int ) ;

__attribute__((used)) static int adv7180_init_controls(struct adv7180_state *state)
{
 v4l2_ctrl_handler_init(&state->ctrl_hdl, 4);

 v4l2_ctrl_new_std(&state->ctrl_hdl, &adv7180_ctrl_ops,
     V4L2_CID_BRIGHTNESS, ADV7180_BRI_MIN,
     ADV7180_BRI_MAX, 1, ADV7180_BRI_DEF);
 v4l2_ctrl_new_std(&state->ctrl_hdl, &adv7180_ctrl_ops,
     V4L2_CID_CONTRAST, ADV7180_CON_MIN,
     ADV7180_CON_MAX, 1, ADV7180_CON_DEF);
 v4l2_ctrl_new_std(&state->ctrl_hdl, &adv7180_ctrl_ops,
     V4L2_CID_SATURATION, ADV7180_SAT_MIN,
     ADV7180_SAT_MAX, 1, ADV7180_SAT_DEF);
 v4l2_ctrl_new_std(&state->ctrl_hdl, &adv7180_ctrl_ops,
     V4L2_CID_HUE, ADV7180_HUE_MIN,
     ADV7180_HUE_MAX, 1, ADV7180_HUE_DEF);
 v4l2_ctrl_new_custom(&state->ctrl_hdl, &adv7180_ctrl_fast_switch, ((void*)0));

 state->sd.ctrl_handler = &state->ctrl_hdl;
 if (state->ctrl_hdl.error) {
  int err = state->ctrl_hdl.error;

  v4l2_ctrl_handler_free(&state->ctrl_hdl);
  return err;
 }
 v4l2_ctrl_handler_setup(&state->ctrl_hdl);

 return 0;
}

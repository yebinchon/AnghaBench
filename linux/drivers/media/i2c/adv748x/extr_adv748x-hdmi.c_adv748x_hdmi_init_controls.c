
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct adv748x_state {int mutex; } ;
struct TYPE_8__ {int error; int * lock; } ;
struct TYPE_7__ {TYPE_2__* ctrl_handler; } ;
struct adv748x_hdmi {TYPE_2__ ctrl_hdl; TYPE_1__ sd; } ;


 int ADV748X_CP_BRI_DEF ;
 int ADV748X_CP_BRI_MAX ;
 int ADV748X_CP_BRI_MIN ;
 int ADV748X_CP_CON_DEF ;
 int ADV748X_CP_CON_MAX ;
 int ADV748X_CP_CON_MIN ;
 int ADV748X_CP_HUE_DEF ;
 int ADV748X_CP_HUE_MAX ;
 int ADV748X_CP_HUE_MIN ;
 int ADV748X_CP_SAT_DEF ;
 int ADV748X_CP_SAT_MAX ;
 int ADV748X_CP_SAT_MIN ;
 scalar_t__ ARRAY_SIZE (int ) ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_HUE ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_TEST_PATTERN ;
 int adv748x_hdmi_ctrl_ops ;
 struct adv748x_state* adv748x_hdmi_to_state (struct adv748x_hdmi*) ;
 int hdmi_ctrl_patgen_menu ;
 int v4l2_ctrl_handler_free (TYPE_2__*) ;
 int v4l2_ctrl_handler_init (TYPE_2__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_2__*) ;
 int v4l2_ctrl_new_std (TYPE_2__*,int *,int ,int ,int ,int,int ) ;
 int v4l2_ctrl_new_std_menu_items (TYPE_2__*,int *,int ,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static int adv748x_hdmi_init_controls(struct adv748x_hdmi *hdmi)
{
 struct adv748x_state *state = adv748x_hdmi_to_state(hdmi);

 v4l2_ctrl_handler_init(&hdmi->ctrl_hdl, 5);


 hdmi->ctrl_hdl.lock = &state->mutex;

 v4l2_ctrl_new_std(&hdmi->ctrl_hdl, &adv748x_hdmi_ctrl_ops,
     V4L2_CID_BRIGHTNESS, ADV748X_CP_BRI_MIN,
     ADV748X_CP_BRI_MAX, 1, ADV748X_CP_BRI_DEF);
 v4l2_ctrl_new_std(&hdmi->ctrl_hdl, &adv748x_hdmi_ctrl_ops,
     V4L2_CID_CONTRAST, ADV748X_CP_CON_MIN,
     ADV748X_CP_CON_MAX, 1, ADV748X_CP_CON_DEF);
 v4l2_ctrl_new_std(&hdmi->ctrl_hdl, &adv748x_hdmi_ctrl_ops,
     V4L2_CID_SATURATION, ADV748X_CP_SAT_MIN,
     ADV748X_CP_SAT_MAX, 1, ADV748X_CP_SAT_DEF);
 v4l2_ctrl_new_std(&hdmi->ctrl_hdl, &adv748x_hdmi_ctrl_ops,
     V4L2_CID_HUE, ADV748X_CP_HUE_MIN,
     ADV748X_CP_HUE_MAX, 1, ADV748X_CP_HUE_DEF);






 v4l2_ctrl_new_std_menu_items(&hdmi->ctrl_hdl, &adv748x_hdmi_ctrl_ops,
         V4L2_CID_TEST_PATTERN,
         ARRAY_SIZE(hdmi_ctrl_patgen_menu) - 1,
         0, 0, hdmi_ctrl_patgen_menu);

 hdmi->sd.ctrl_handler = &hdmi->ctrl_hdl;
 if (hdmi->ctrl_hdl.error) {
  v4l2_ctrl_handler_free(&hdmi->ctrl_hdl);
  return hdmi->ctrl_hdl.error;
 }

 return v4l2_ctrl_handler_setup(&hdmi->ctrl_hdl);
}

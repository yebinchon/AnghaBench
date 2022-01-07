
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct adv76xx_state {int detect_tx_5v_ctrl; struct adv76xx_chip_info* info; } ;
struct adv76xx_chip_info {int (* read_cable_det ) (struct v4l2_subdev*) ;} ;


 int stub1 (struct v4l2_subdev*) ;
 struct adv76xx_state* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_s_ctrl (int ,int ) ;

__attribute__((used)) static int adv76xx_s_detect_tx_5v_ctrl(struct v4l2_subdev *sd)
{
 struct adv76xx_state *state = to_state(sd);
 const struct adv76xx_chip_info *info = state->info;
 u16 cable_det = info->read_cable_det(sd);

 return v4l2_ctrl_s_ctrl(state->detect_tx_5v_ctrl, cable_det);
}

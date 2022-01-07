
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adv7511_state {int have_edid0_ctrl; int cec_adap; } ;
struct adv7511_edid_detect {int present; int phys_addr; int segment; } ;


 int ADV7511_EDID_DETECT ;
 int CEC_PHYS_ADDR_INVALID ;
 int adv7511_rd (struct v4l2_subdev*,int) ;
 int cec_s_phys_addr (int ,int ,int) ;
 struct adv7511_state* get_adv7511_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_s_ctrl (int ,int) ;
 int v4l2_subdev_notify (struct v4l2_subdev*,int ,void*) ;

__attribute__((used)) static void adv7511_notify_no_edid(struct v4l2_subdev *sd)
{
 struct adv7511_state *state = get_adv7511_state(sd);
 struct adv7511_edid_detect ed;


 ed.present = 0;
 ed.segment = adv7511_rd(sd, 0xc4);
 ed.phys_addr = CEC_PHYS_ADDR_INVALID;
 cec_s_phys_addr(state->cec_adap, ed.phys_addr, 0);
 v4l2_subdev_notify(sd, ADV7511_EDID_DETECT, (void *)&ed);
 v4l2_ctrl_s_ctrl(state->have_edid0_ctrl, 0x0);
}

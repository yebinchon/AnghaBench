
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_edid {int pad; scalar_t__ start_block; int blocks; int * edid; int * reserved; } ;
struct TYPE_4__ {int present; int edid; } ;
struct TYPE_3__ {int present; int edid; } ;
struct adv7842_state {TYPE_2__ hdmi_edid; TYPE_1__ vga_edid; int aspect_ratio; } ;





 int E2BIG ;
 int EINVAL ;
 int adv7842_s_detect_tx_5v_ctrl (struct v4l2_subdev*) ;
 int edid_write_hdmi_segment (struct v4l2_subdev*,int) ;
 int edid_write_vga_segment (struct v4l2_subdev*) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;
 struct adv7842_state* to_state (struct v4l2_subdev*) ;
 int v4l2_calc_aspect_ratio (int ,int ) ;
 int v4l2_err (struct v4l2_subdev*,char*,int,int) ;

__attribute__((used)) static int adv7842_set_edid(struct v4l2_subdev *sd, struct v4l2_edid *e)
{
 struct adv7842_state *state = to_state(sd);
 int err = 0;

 memset(e->reserved, 0, sizeof(e->reserved));

 if (e->pad > 128)
  return -EINVAL;
 if (e->start_block != 0)
  return -EINVAL;
 if (e->blocks > 2) {
  e->blocks = 2;
  return -E2BIG;
 }


 state->aspect_ratio = v4l2_calc_aspect_ratio(e->edid[0x15],
   e->edid[0x16]);

 switch (e->pad) {
 case 128:
  memset(&state->vga_edid.edid, 0, 256);
  state->vga_edid.present = e->blocks ? 0x1 : 0x0;
  memcpy(&state->vga_edid.edid, e->edid, 128 * e->blocks);
  err = edid_write_vga_segment(sd);
  break;
 case 130:
 case 129:
  memset(&state->hdmi_edid.edid, 0, 256);
  if (e->blocks) {
   state->hdmi_edid.present |= 0x04 << e->pad;
  } else {
   state->hdmi_edid.present &= ~(0x04 << e->pad);
   adv7842_s_detect_tx_5v_ctrl(sd);
  }
  memcpy(&state->hdmi_edid.edid, e->edid, 128 * e->blocks);
  err = edid_write_hdmi_segment(sd, e->pad);
  break;
 default:
  return -EINVAL;
 }
 if (err < 0)
  v4l2_err(sd, "error %d writing edid on port %d\n", err, e->pad);
 return err;
}

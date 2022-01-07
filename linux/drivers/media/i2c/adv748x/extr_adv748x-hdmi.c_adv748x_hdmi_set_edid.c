
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_edid {scalar_t__ start_block; int blocks; int pad; int * edid; int reserved; } ;
struct adv748x_state {int dummy; } ;
struct TYPE_3__ {int blocks; int present; int edid; } ;
struct TYPE_4__ {int numerator; int denominator; } ;
struct adv748x_hdmi {TYPE_1__ edid; TYPE_2__ aspect_ratio; } ;


 int ADV748X_REPEATER_EDID_CTL ;
 int ADV748X_REPEATER_EDID_CTL_EN ;
 int ADV748X_REPEATER_EDID_SZ ;
 int ADV748X_REPEATER_EDID_SZ_SHIFT ;
 int E2BIG ;
 int EINVAL ;
 int adv748x_hdmi_edid_write_block (struct adv748x_hdmi*,int,int ) ;
 struct adv748x_state* adv748x_hdmi_to_state (struct adv748x_hdmi*) ;
 struct adv748x_hdmi* adv748x_sd_to_hdmi (struct v4l2_subdev*) ;
 int memcpy (int ,int *,int) ;
 int memset (int ,int ,int) ;
 int repeater_write (struct adv748x_state*,int ,int) ;
 TYPE_2__ v4l2_calc_aspect_ratio (int ,int ) ;
 int v4l2_err (struct v4l2_subdev*,char*,int,int ) ;

__attribute__((used)) static int adv748x_hdmi_set_edid(struct v4l2_subdev *sd, struct v4l2_edid *edid)
{
 struct adv748x_hdmi *hdmi = adv748x_sd_to_hdmi(sd);
 struct adv748x_state *state = adv748x_hdmi_to_state(hdmi);
 int err;

 memset(edid->reserved, 0, sizeof(edid->reserved));

 if (edid->start_block != 0)
  return -EINVAL;

 if (edid->blocks == 0) {
  hdmi->edid.blocks = 0;
  hdmi->edid.present = 0;


  hdmi->aspect_ratio.numerator = 16;
  hdmi->aspect_ratio.denominator = 9;


  repeater_write(state, ADV748X_REPEATER_EDID_SZ,
          edid->blocks << ADV748X_REPEATER_EDID_SZ_SHIFT);

  repeater_write(state, ADV748X_REPEATER_EDID_CTL, 0);

  return 0;
 }

 if (edid->blocks > 4) {
  edid->blocks = 4;
  return -E2BIG;
 }

 memcpy(hdmi->edid.edid, edid->edid, 128 * edid->blocks);
 hdmi->edid.blocks = edid->blocks;
 hdmi->edid.present = 1;

 hdmi->aspect_ratio = v4l2_calc_aspect_ratio(edid->edid[0x15],
   edid->edid[0x16]);

 err = adv748x_hdmi_edid_write_block(hdmi, 128 * edid->blocks,
   hdmi->edid.edid);
 if (err < 0) {
  v4l2_err(sd, "error %d writing edid pad %d\n", err, edid->pad);
  return err;
 }

 repeater_write(state, ADV748X_REPEATER_EDID_SZ,
         edid->blocks << ADV748X_REPEATER_EDID_SZ_SHIFT);

 repeater_write(state, ADV748X_REPEATER_EDID_CTL,
         ADV748X_REPEATER_EDID_CTL_EN);

 return 0;
}

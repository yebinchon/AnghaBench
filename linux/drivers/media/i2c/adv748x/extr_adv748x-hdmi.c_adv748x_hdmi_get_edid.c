
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_edid {scalar_t__ start_block; scalar_t__ blocks; int edid; int reserved; } ;
struct TYPE_2__ {scalar_t__ blocks; scalar_t__ edid; int present; } ;
struct adv748x_hdmi {TYPE_1__ edid; } ;


 int EINVAL ;
 int ENODATA ;
 struct adv748x_hdmi* adv748x_sd_to_hdmi (struct v4l2_subdev*) ;
 int memcpy (int ,scalar_t__,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int adv748x_hdmi_get_edid(struct v4l2_subdev *sd, struct v4l2_edid *edid)
{
 struct adv748x_hdmi *hdmi = adv748x_sd_to_hdmi(sd);

 memset(edid->reserved, 0, sizeof(edid->reserved));

 if (!hdmi->edid.present)
  return -ENODATA;

 if (edid->start_block == 0 && edid->blocks == 0) {
  edid->blocks = hdmi->edid.blocks;
  return 0;
 }

 if (edid->start_block >= hdmi->edid.blocks)
  return -EINVAL;

 if (edid->start_block + edid->blocks > hdmi->edid.blocks)
  edid->blocks = hdmi->edid.blocks - edid->start_block;

 memcpy(edid->edid, hdmi->edid.edid + edid->start_block * 128,
   edid->blocks * 128);

 return 0;
}

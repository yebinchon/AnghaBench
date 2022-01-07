
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_edid {int pad; int start_block; int blocks; int edid; int reserved; } ;
struct TYPE_4__ {int * edid; int present; } ;
struct TYPE_3__ {int present; int * edid; } ;
struct adv7842_state {TYPE_2__ vga_edid; TYPE_1__ hdmi_edid; } ;





 int EINVAL ;
 int ENODATA ;
 int memcpy (int ,int *,int) ;
 int memset (int ,int ,int) ;
 struct adv7842_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7842_get_edid(struct v4l2_subdev *sd, struct v4l2_edid *edid)
{
 struct adv7842_state *state = to_state(sd);
 u8 *data = ((void*)0);

 memset(edid->reserved, 0, sizeof(edid->reserved));

 switch (edid->pad) {
 case 130:
 case 129:
  if (state->hdmi_edid.present & (0x04 << edid->pad))
   data = state->hdmi_edid.edid;
  break;
 case 128:
  if (state->vga_edid.present)
   data = state->vga_edid.edid;
  break;
 default:
  return -EINVAL;
 }

 if (edid->start_block == 0 && edid->blocks == 0) {
  edid->blocks = data ? 2 : 0;
  return 0;
 }

 if (!data)
  return -ENODATA;

 if (edid->start_block >= 2)
  return -EINVAL;

 if (edid->start_block + edid->blocks > 2)
  edid->blocks = 2 - edid->start_block;

 memcpy(edid->edid, data + edid->start_block * 128, edid->blocks * 128);

 return 0;
}

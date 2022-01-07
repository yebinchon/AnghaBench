
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_edid {int pad; scalar_t__ start_block; scalar_t__ blocks; int edid; int reserved; } ;
struct TYPE_2__ {int present; scalar_t__ blocks; int * edid; } ;
struct adv76xx_state {TYPE_1__ edid; } ;






 int EINVAL ;
 int ENODATA ;
 int memcpy (int ,int *,int) ;
 int memset (int ,int ,int) ;
 struct adv76xx_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int adv76xx_get_edid(struct v4l2_subdev *sd, struct v4l2_edid *edid)
{
 struct adv76xx_state *state = to_state(sd);
 u8 *data = ((void*)0);

 memset(edid->reserved, 0, sizeof(edid->reserved));

 switch (edid->pad) {
 case 128:
 case 131:
 case 130:
 case 129:
  if (state->edid.present & (1 << edid->pad))
   data = state->edid.edid;
  break;
 default:
  return -EINVAL;
 }

 if (edid->start_block == 0 && edid->blocks == 0) {
  edid->blocks = data ? state->edid.blocks : 0;
  return 0;
 }

 if (!data)
  return -ENODATA;

 if (edid->start_block >= state->edid.blocks)
  return -EINVAL;

 if (edid->start_block + edid->blocks > state->edid.blocks)
  edid->blocks = state->edid.blocks - edid->start_block;

 memcpy(edid->edid, data + edid->start_block * 128, edid->blocks * 128);

 return 0;
}

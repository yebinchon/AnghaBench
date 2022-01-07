
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_edid {scalar_t__ pad; int start_block; int blocks; int edid; int reserved; } ;
struct TYPE_2__ {int segments; int * data; } ;
struct adv7511_state {TYPE_1__ edid; } ;


 int EINVAL ;
 int ENODATA ;
 struct adv7511_state* get_adv7511_state (struct v4l2_subdev*) ;
 int memcpy (int ,int *,int) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int adv7511_get_edid(struct v4l2_subdev *sd, struct v4l2_edid *edid)
{
 struct adv7511_state *state = get_adv7511_state(sd);

 memset(edid->reserved, 0, sizeof(edid->reserved));

 if (edid->pad != 0)
  return -EINVAL;

 if (edid->start_block == 0 && edid->blocks == 0) {
  edid->blocks = state->edid.segments * 2;
  return 0;
 }

 if (state->edid.segments == 0)
  return -ENODATA;

 if (edid->start_block >= state->edid.segments * 2)
  return -EINVAL;

 if (edid->start_block + edid->blocks > state->edid.segments * 2)
  edid->blocks = state->edid.segments * 2 - edid->start_block;

 memcpy(edid->edid, &state->edid.data[edid->start_block * 128],
   128 * edid->blocks);

 return 0;
}

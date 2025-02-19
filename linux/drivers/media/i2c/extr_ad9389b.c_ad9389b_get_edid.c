
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct v4l2_edid {scalar_t__ pad; int blocks; int start_block; int edid; } ;
struct TYPE_2__ {int segments; int * data; } ;
struct ad9389b_state {TYPE_1__ edid; } ;


 int E2BIG ;
 int EINVAL ;
 int ENODATA ;
 int debug ;
 struct ad9389b_state* get_ad9389b_state (struct v4l2_subdev*) ;
 int memcpy (int ,int *,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;

__attribute__((used)) static int ad9389b_get_edid(struct v4l2_subdev *sd, struct v4l2_edid *edid)
{
 struct ad9389b_state *state = get_ad9389b_state(sd);

 if (edid->pad != 0)
  return -EINVAL;
 if (edid->blocks == 0 || edid->blocks > 256)
  return -EINVAL;
 if (!state->edid.segments) {
  v4l2_dbg(1, debug, sd, "EDID segment 0 not found\n");
  return -ENODATA;
 }
 if (edid->start_block >= state->edid.segments * 2)
  return -E2BIG;
 if (edid->blocks + edid->start_block >= state->edid.segments * 2)
  edid->blocks = state->edid.segments * 2 - edid->start_block;
 memcpy(edid->edid, &state->edid.data[edid->start_block * 128],
        128 * edid->blocks);
 return 0;
}

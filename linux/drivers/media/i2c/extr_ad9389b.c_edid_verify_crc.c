
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {int blocks; int * data; } ;
struct ad9389b_state {TYPE_1__ edid; } ;


 int edid_block_verify_crc (int *) ;
 struct ad9389b_state* get_ad9389b_state (struct v4l2_subdev*) ;

__attribute__((used)) static bool edid_verify_crc(struct v4l2_subdev *sd, u32 segment)
{
 struct ad9389b_state *state = get_ad9389b_state(sd);
 u32 blocks = state->edid.blocks;
 u8 *data = state->edid.data;

 if (edid_block_verify_crc(&data[segment * 256])) {
  if ((segment + 1) * 2 <= blocks)
   return edid_block_verify_crc(&data[segment * 256 + 128]);
  return 1;
 }
 return 0;
}

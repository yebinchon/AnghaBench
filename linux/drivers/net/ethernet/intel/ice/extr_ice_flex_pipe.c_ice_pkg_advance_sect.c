
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_seg {int dummy; } ;
struct ice_pkg_enum {scalar_t__ sect_idx; TYPE_1__* buf; } ;
struct TYPE_2__ {int section_count; } ;


 TYPE_1__* ice_pkg_enum_buf (struct ice_seg*,struct ice_pkg_enum*) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static bool
ice_pkg_advance_sect(struct ice_seg *ice_seg, struct ice_pkg_enum *state)
{
 if (!ice_seg && !state->buf)
  return 0;

 if (!ice_seg && state->buf)
  if (++state->sect_idx < le16_to_cpu(state->buf->section_count))
   return 1;

 state->buf = ice_pkg_enum_buf(ice_seg, state);
 if (!state->buf)
  return 0;


 state->sect_idx = 0;
 return 1;
}

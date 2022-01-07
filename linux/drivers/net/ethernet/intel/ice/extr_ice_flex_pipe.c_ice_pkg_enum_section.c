
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct ice_seg {int dummy; } ;
struct ice_pkg_enum {size_t sect_idx; void* sect; TYPE_2__* buf; int sect_type; int type; } ;
struct TYPE_4__ {TYPE_1__* section_entry; } ;
struct TYPE_3__ {scalar_t__ type; int offset; int size; } ;


 scalar_t__ ICE_MAX_S_OFF ;
 scalar_t__ ICE_MAX_S_SZ ;
 scalar_t__ ICE_MIN_S_OFF ;
 scalar_t__ ICE_MIN_S_SZ ;
 scalar_t__ ICE_PKG_BUF_SIZE ;
 scalar_t__ cpu_to_le32 (int ) ;
 int ice_pkg_advance_sect (struct ice_seg*,struct ice_pkg_enum*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (scalar_t__) ;

__attribute__((used)) static void *
ice_pkg_enum_section(struct ice_seg *ice_seg, struct ice_pkg_enum *state,
       u32 sect_type)
{
 u16 offset, size;

 if (ice_seg)
  state->type = sect_type;

 if (!ice_pkg_advance_sect(ice_seg, state))
  return ((void*)0);


 while (state->buf->section_entry[state->sect_idx].type !=
        cpu_to_le32(state->type))
  if (!ice_pkg_advance_sect(((void*)0), state))
   return ((void*)0);


 offset = le16_to_cpu(state->buf->section_entry[state->sect_idx].offset);
 if (offset < ICE_MIN_S_OFF || offset > ICE_MAX_S_OFF)
  return ((void*)0);

 size = le16_to_cpu(state->buf->section_entry[state->sect_idx].size);
 if (size < ICE_MIN_S_SZ || size > ICE_MAX_S_SZ)
  return ((void*)0);


 if (offset + size > ICE_PKG_BUF_SIZE)
  return ((void*)0);

 state->sect_type =
  le32_to_cpu(state->buf->section_entry[state->sect_idx].type);


 state->sect = ((u8 *)state->buf) +
  le16_to_cpu(state->buf->section_entry[state->sect_idx].offset);

 return state->sect;
}

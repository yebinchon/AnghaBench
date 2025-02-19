
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ice_seg {int dummy; } ;
struct ice_pkg_enum {scalar_t__ buf_idx; TYPE_1__* buf_table; } ;
struct ice_buf_hdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ buf_array; int buf_count; } ;


 TYPE_1__* ice_find_buf_table (struct ice_seg*) ;
 struct ice_buf_hdr* ice_pkg_val_buf (scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static struct ice_buf_hdr *
ice_pkg_enum_buf(struct ice_seg *ice_seg, struct ice_pkg_enum *state)
{
 if (ice_seg) {
  state->buf_table = ice_find_buf_table(ice_seg);
  if (!state->buf_table)
   return ((void*)0);

  state->buf_idx = 0;
  return ice_pkg_val_buf(state->buf_table->buf_array);
 }

 if (++state->buf_idx < le32_to_cpu(state->buf_table->buf_count))
  return ice_pkg_val_buf(state->buf_table->buf_array +
           state->buf_idx);
 else
  return ((void*)0);
}

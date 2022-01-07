
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u16 ;
struct ice_vsi_ctx {size_t* num_lan_q_entries; struct ice_q_ctx** lan_q_ctx; } ;
struct ice_q_ctx {int dummy; } ;
struct ice_hw {int dummy; } ;


 struct ice_vsi_ctx* ice_get_vsi_ctx (struct ice_hw*,size_t) ;

__attribute__((used)) static struct ice_q_ctx *
ice_get_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 q_handle)
{
 struct ice_vsi_ctx *vsi;
 struct ice_q_ctx *q_ctx;

 vsi = ice_get_vsi_ctx(hw, vsi_handle);
 if (!vsi)
  return ((void*)0);
 if (q_handle >= vsi->num_lan_q_entries[tc])
  return ((void*)0);
 if (!vsi->lan_q_ctx[tc])
  return ((void*)0);
 q_ctx = vsi->lan_q_ctx[tc];
 return &q_ctx[q_handle];
}

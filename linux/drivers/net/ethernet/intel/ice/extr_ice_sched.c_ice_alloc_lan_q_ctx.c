
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u16 ;
struct ice_vsi_ctx {scalar_t__* num_lan_q_entries; struct ice_q_ctx** lan_q_ctx; } ;
struct ice_q_ctx {int dummy; } ;
struct ice_hw {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int GFP_KERNEL ;
 int ICE_ERR_NO_MEMORY ;
 int ICE_ERR_PARAM ;
 void* devm_kcalloc (int ,scalar_t__,int,int ) ;
 int devm_kfree (int ,struct ice_q_ctx*) ;
 struct ice_vsi_ctx* ice_get_vsi_ctx (struct ice_hw*,scalar_t__) ;
 int ice_hw_to_dev (struct ice_hw*) ;
 int memcpy (struct ice_q_ctx*,struct ice_q_ctx*,scalar_t__) ;

__attribute__((used)) static enum ice_status
ice_alloc_lan_q_ctx(struct ice_hw *hw, u16 vsi_handle, u8 tc, u16 new_numqs)
{
 struct ice_vsi_ctx *vsi_ctx;
 struct ice_q_ctx *q_ctx;

 vsi_ctx = ice_get_vsi_ctx(hw, vsi_handle);
 if (!vsi_ctx)
  return ICE_ERR_PARAM;

 if (!vsi_ctx->lan_q_ctx[tc]) {
  vsi_ctx->lan_q_ctx[tc] = devm_kcalloc(ice_hw_to_dev(hw),
            new_numqs,
            sizeof(*q_ctx),
            GFP_KERNEL);
  if (!vsi_ctx->lan_q_ctx[tc])
   return ICE_ERR_NO_MEMORY;
  vsi_ctx->num_lan_q_entries[tc] = new_numqs;
  return 0;
 }

 if (new_numqs > vsi_ctx->num_lan_q_entries[tc]) {
  u16 prev_num = vsi_ctx->num_lan_q_entries[tc];

  q_ctx = devm_kcalloc(ice_hw_to_dev(hw), new_numqs,
         sizeof(*q_ctx), GFP_KERNEL);
  if (!q_ctx)
   return ICE_ERR_NO_MEMORY;
  memcpy(q_ctx, vsi_ctx->lan_q_ctx[tc],
         prev_num * sizeof(*q_ctx));
  devm_kfree(ice_hw_to_dev(hw), vsi_ctx->lan_q_ctx[tc]);
  vsi_ctx->lan_q_ctx[tc] = q_ctx;
  vsi_ctx->num_lan_q_entries[tc] = new_numqs;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct ice_vsi {int type; int idx; scalar_t__ vf_id; TYPE_2__* port_info; TYPE_1__* back; } ;
struct ice_tlan_ctx {int base; void* legacy_int; int tso_qnum; void* tso_ena; int src_vsi; int vmvf_type; scalar_t__ vmvf_num; int pf_num; int qlen; int port_num; } ;
struct ice_ring {int dma; int count; struct ice_vsi* vsi; } ;
struct TYPE_6__ {scalar_t__ vf_base_id; } ;
struct ice_hw {TYPE_3__ func_caps; int pf_id; } ;
struct TYPE_5__ {int lport; } ;
struct TYPE_4__ {struct ice_hw hw; } ;


 int ICE_TLAN_CTX_BASE_S ;
 int ICE_TLAN_CTX_VMVF_TYPE_PF ;
 int ICE_TLAN_CTX_VMVF_TYPE_VF ;
 void* ICE_TX_LEGACY ;



 int ice_get_hw_vsi_num (struct ice_hw*,int ) ;
 int ice_set_cgd_num (struct ice_tlan_ctx*,struct ice_ring*) ;

__attribute__((used)) static void
ice_setup_tx_ctx(struct ice_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf_q)
{
 struct ice_vsi *vsi = ring->vsi;
 struct ice_hw *hw = &vsi->back->hw;

 tlan_ctx->base = ring->dma >> ICE_TLAN_CTX_BASE_S;

 tlan_ctx->port_num = vsi->port_info->lport;


 tlan_ctx->qlen = ring->count;

 ice_set_cgd_num(tlan_ctx, ring);


 tlan_ctx->pf_num = hw->pf_id;







 switch (vsi->type) {
 case 130:

 case 129:
  tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_PF;
  break;
 case 128:

  tlan_ctx->vmvf_num = hw->func_caps.vf_base_id + vsi->vf_id;
  tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_VF;
  break;
 default:
  return;
 }


 tlan_ctx->src_vsi = ice_get_hw_vsi_num(hw, vsi->idx);

 tlan_ctx->tso_ena = ICE_TX_LEGACY;
 tlan_ctx->tso_qnum = pf_q;





 tlan_ctx->legacy_int = ICE_TX_LEGACY;
}

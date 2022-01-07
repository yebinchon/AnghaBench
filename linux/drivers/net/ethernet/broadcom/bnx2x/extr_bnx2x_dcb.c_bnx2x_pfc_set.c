
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct bnx2x_nig_brb_pfc_port_params {int num_of_rx_cos_priority_mask; int* rx_cos_priority_mask; int pkt_priority_to_cos; int llfc_low_priority_classes; scalar_t__ llfc_high_priority_classes; int member_0; } ;
struct TYPE_8__ {int feature_config_flags; } ;
struct TYPE_6__ {int num_of_cos; TYPE_1__* cos_params; } ;
struct TYPE_7__ {TYPE_2__ ets; } ;
struct bnx2x {int link_vars; TYPE_4__ link_params; TYPE_3__ dcbx_port_params; } ;
struct TYPE_5__ {int pri_bitmask; } ;


 int DCBX_PFC_PRI_PAUSE_MASK (struct bnx2x*) ;
 int FEATURE_CONFIG_PFC_ENABLED ;
 int MAX_PFC_PRIORITIES ;
 int bnx2x_acquire_phy_lock (struct bnx2x*) ;
 int bnx2x_release_phy_lock (struct bnx2x*) ;
 int bnx2x_update_pfc (TYPE_4__*,int *,struct bnx2x_nig_brb_pfc_port_params*) ;

__attribute__((used)) static void bnx2x_pfc_set(struct bnx2x *bp)
{
 struct bnx2x_nig_brb_pfc_port_params pfc_params = {0};
 u32 pri_bit, val = 0;
 int i;

 pfc_params.num_of_rx_cos_priority_mask =
     bp->dcbx_port_params.ets.num_of_cos;


 for (i = 0; i < bp->dcbx_port_params.ets.num_of_cos; i++)





  pfc_params.rx_cos_priority_mask[i] =
   bp->dcbx_port_params.ets.cos_params[i].pri_bitmask
    & DCBX_PFC_PRI_PAUSE_MASK(bp);






 for (i = 0 ; i < MAX_PFC_PRIORITIES ; i++) {
  pri_bit = 1 << i;

  if (!(pri_bit & DCBX_PFC_PRI_PAUSE_MASK(bp)))
   val |= 1 << (i * 4);
 }

 pfc_params.pkt_priority_to_cos = val;


 pfc_params.llfc_low_priority_classes = DCBX_PFC_PRI_PAUSE_MASK(bp);

 pfc_params.llfc_high_priority_classes = 0;

 bnx2x_acquire_phy_lock(bp);
 bp->link_params.feature_config_flags |= FEATURE_CONFIG_PFC_ENABLED;
 bnx2x_update_pfc(&bp->link_params, &bp->link_vars, &pfc_params);
 bnx2x_release_phy_lock(bp);
}

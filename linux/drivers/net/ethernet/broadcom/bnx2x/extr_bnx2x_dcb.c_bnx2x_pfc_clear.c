
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x_nig_brb_pfc_port_params {int pause_enable; int member_0; } ;
struct TYPE_2__ {int feature_config_flags; } ;
struct bnx2x {int link_vars; TYPE_1__ link_params; } ;


 int FEATURE_CONFIG_PFC_ENABLED ;
 int bnx2x_acquire_phy_lock (struct bnx2x*) ;
 int bnx2x_release_phy_lock (struct bnx2x*) ;
 int bnx2x_update_pfc (TYPE_1__*,int *,struct bnx2x_nig_brb_pfc_port_params*) ;

__attribute__((used)) static void bnx2x_pfc_clear(struct bnx2x *bp)
{
 struct bnx2x_nig_brb_pfc_port_params nig_params = {0};
 nig_params.pause_enable = 1;
 bnx2x_acquire_phy_lock(bp);
 bp->link_params.feature_config_flags &= ~FEATURE_CONFIG_PFC_ENABLED;
 bnx2x_update_pfc(&bp->link_params, &bp->link_vars, &nig_params);
 bnx2x_release_phy_lock(bp);
}

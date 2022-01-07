
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int link_vars; int link_params; } ;


 int BNX2X_ERR (char*) ;
 int BP_NOMCP (struct bnx2x*) ;
 int bnx2x_acquire_phy_lock (struct bnx2x*) ;
 int bnx2x_calc_fc_adv (struct bnx2x*) ;
 int bnx2x_init_dropless_fc (struct bnx2x*) ;
 int bnx2x_phy_init (int *,int *) ;
 int bnx2x_release_phy_lock (struct bnx2x*) ;

void bnx2x_link_set(struct bnx2x *bp)
{
 if (!BP_NOMCP(bp)) {
  bnx2x_acquire_phy_lock(bp);
  bnx2x_phy_init(&bp->link_params, &bp->link_vars);
  bnx2x_release_phy_lock(bp);

  bnx2x_init_dropless_fc(bp);

  bnx2x_calc_fc_adv(bp);
 } else
  BNX2X_ERR("Bootcode is missing - can not set link\n");
}

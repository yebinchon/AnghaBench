
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_vars {scalar_t__ phy_flags; scalar_t__ link_up; } ;
struct link_params {int port; int chip_id; int lfa_base; int link_flags; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ CHIP_IS_E3 (struct bnx2x*) ;
 scalar_t__ NIG_REG_EGRESS_DRAIN0_MODE ;
 int PHY_INITIALIZED ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int bnx2x_link_reset (struct link_params*,struct link_vars*,int) ;
 int bnx2x_set_bmac_rx (struct bnx2x*,int ,int,int) ;
 int bnx2x_set_rx_filter (struct link_params*,int ) ;
 int bnx2x_set_umac_rxtx (struct link_params*,int) ;
 int bnx2x_set_xmac_rxtx (struct link_params*,int) ;
 int usleep_range (int,int) ;

int bnx2x_lfa_reset(struct link_params *params,
          struct link_vars *vars)
{
 struct bnx2x *bp = params->bp;
 vars->link_up = 0;
 vars->phy_flags = 0;
 params->link_flags &= ~PHY_INITIALIZED;
 if (!params->lfa_base)
  return bnx2x_link_reset(params, vars, 1);




 REG_WR(bp, NIG_REG_EGRESS_DRAIN0_MODE + params->port*4, 1);





 if (!CHIP_IS_E3(bp))
  bnx2x_set_bmac_rx(bp, params->chip_id, params->port, 0);

 if (CHIP_IS_E3(bp)) {
  bnx2x_set_xmac_rxtx(params, 0);
  bnx2x_set_umac_rxtx(params, 0);
 }

 usleep_range(10000, 20000);




 bnx2x_set_rx_filter(params, 0);







 if (!CHIP_IS_E3(bp))
  bnx2x_set_bmac_rx(bp, params->chip_id, params->port, 1);

 if (CHIP_IS_E3(bp)) {
  bnx2x_set_xmac_rxtx(params, 1);
  bnx2x_set_umac_rxtx(params, 1);
 }

 REG_WR(bp, NIG_REG_EGRESS_DRAIN0_MODE + params->port*4, 0);
 return 0;
}

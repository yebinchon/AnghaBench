
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct link_vars {int link_status; } ;
struct link_params {int dummy; } ;
struct bnx2x_phy {int dummy; } ;


 int LINK_STATUS_AUTO_NEGOTIATE_COMPLETE ;
 int LINK_STATUS_PARALLEL_DETECTION_USED ;
 int MDIO_AN_CL73_OR_37_COMPLETE ;
 scalar_t__ bnx2x_direct_parallel_detect_used (struct bnx2x_phy*,struct link_params*) ;

__attribute__((used)) static void bnx2x_xgxs_an_resolve(struct bnx2x_phy *phy,
      struct link_params *params,
      struct link_vars *vars,
      u32 gp_status)
{
 if (gp_status & MDIO_AN_CL73_OR_37_COMPLETE)
  vars->link_status |=
   LINK_STATUS_AUTO_NEGOTIATE_COMPLETE;

 if (bnx2x_direct_parallel_detect_used(phy, params))
  vars->link_status |=
   LINK_STATUS_PARALLEL_DETECTION_USED;
}

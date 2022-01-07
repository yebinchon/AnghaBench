
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int MDIO_WC_DEVAD ;
 int MDIO_WC_REG_GP2_STATUS_GP_2_0 ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_get_warpcore_lane (struct bnx2x_phy*,struct link_params*) ;

__attribute__((used)) static int bnx2x_warpcore_get_sigdet(struct bnx2x_phy *phy,
         struct link_params *params)
{
 u16 gp2_status_reg0, lane;
 struct bnx2x *bp = params->bp;

 lane = bnx2x_get_warpcore_lane(phy, params);

 bnx2x_cl45_read(bp, phy, MDIO_WC_DEVAD, MDIO_WC_REG_GP2_STATUS_GP_2_0,
     &gp2_status_reg0);

 return (gp2_status_reg0 >> (8+lane)) & 0x1;
}

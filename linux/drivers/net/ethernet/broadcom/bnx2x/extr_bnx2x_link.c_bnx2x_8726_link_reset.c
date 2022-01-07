
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,int ) ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_GEN_CTRL ;
 int NETIF_MSG_LINK ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;

__attribute__((used)) static void bnx2x_8726_link_reset(struct bnx2x_phy *phy,
      struct link_params *params)
{
 struct bnx2x *bp = params->bp;
 DP(NETIF_MSG_LINK, "bnx2x_8726_link_reset port %d\n", params->port);

 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_GEN_CTRL, 0x0001);
}

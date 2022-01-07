
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct link_vars {int dummy; } ;
struct link_params {int link_attr_sync; struct bnx2x* bp; } ;
struct bnx2x_reg_set {int member_2; int val; int reg; int devad; int member_1; int const member_0; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 size_t ARRAY_SIZE (struct bnx2x_reg_set*) ;
 int DP (int ,char*) ;
 int LINK_ATTR_SYNC_KR2_ENABLE ;

 int MDIO_WC_REG_CL49_USERB0_CTRL ;
 int NETIF_MSG_LINK ;
 int bnx2x_cl45_read_or_write (struct bnx2x*,struct bnx2x_phy*,int const,int ,int) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int ) ;
 int bnx2x_update_link_attr (struct link_params*,int ) ;

__attribute__((used)) static void bnx2x_warpcore_enable_AN_KR2(struct bnx2x_phy *phy,
      struct link_params *params,
      struct link_vars *vars)
{
 struct bnx2x *bp = params->bp;
 u16 i;
 static struct bnx2x_reg_set reg_set[] = {

  {143, 136, 0xa157},
  {143, 134, 0xcbe2},
  {143, 135, 0x7537},
  {143, 133, 0xa157},
  {143, 137, 0xcbe2},
  {143, 138, 0x7537},

  {143, 139, 0x000a},
  {143, 141, 0x6400},
  {143, 140, 0x0620},
  {143, 142, 0x0157},
  {143, 130, 0x6464},
  {143, 129, 0x3150},
  {143, 128, 0x3150},
  {143, 132, 0x0157},
  {143, 131, 0x0620}
 };
 DP(NETIF_MSG_LINK, "Enabling 20G-KR2\n");

 bnx2x_cl45_read_or_write(bp, phy, 143,
     MDIO_WC_REG_CL49_USERB0_CTRL, (3<<6));

 for (i = 0; i < ARRAY_SIZE(reg_set); i++)
  bnx2x_cl45_write(bp, phy, reg_set[i].devad, reg_set[i].reg,
     reg_set[i].val);


 params->link_attr_sync |= LINK_ATTR_SYNC_KR2_ENABLE;
 bnx2x_update_link_attr(params, params->link_attr_sync);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct link_vars {int eee_status; } ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_EEE_ADV ;
 scalar_t__ MISC_REG_CPMU_LP_MASK_EXT_P0 ;
 int NETIF_MSG_LINK ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int SHMEM_EEE_10G_ADV ;
 int SHMEM_EEE_1G_ADV ;
 int SHMEM_EEE_ADV_STATUS_MASK ;
 int SHMEM_EEE_ADV_STATUS_SHIFT ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;

__attribute__((used)) static int bnx2x_eee_advertise(struct bnx2x_phy *phy,
      struct link_params *params,
      struct link_vars *vars, u8 modes)
{
 struct bnx2x *bp = params->bp;
 u16 val = 0;


 REG_WR(bp, MISC_REG_CPMU_LP_MASK_EXT_P0 + (params->port << 2), 0xfc20);

 if (modes & SHMEM_EEE_10G_ADV) {
  DP(NETIF_MSG_LINK, "Advertise 10GBase-T EEE\n");
  val |= 0x8;
 }
 if (modes & SHMEM_EEE_1G_ADV) {
  DP(NETIF_MSG_LINK, "Advertise 1GBase-T EEE\n");
  val |= 0x4;
 }

 bnx2x_cl45_write(bp, phy, MDIO_AN_DEVAD, MDIO_AN_REG_EEE_ADV, val);

 vars->eee_status &= ~SHMEM_EEE_ADV_STATUS_MASK;
 vars->eee_status |= (modes << SHMEM_EEE_ADV_STATUS_SHIFT);

 return 0;
}

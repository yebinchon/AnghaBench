
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct link_params {int loopback_mode; struct bnx2x* bp; } ;
struct bnx2x_phy {scalar_t__ req_line_speed; int supported; int flags; } ;
struct bnx2x {int dummy; } ;


 int CL22_WR_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,int ,int ,int ) ;
 int DP (int ,char*,int ,scalar_t__) ;
 int FLAGS_WC_DUAL_MODE ;
 int MDIO_AER_BLOCK_AER_REG ;
 int MDIO_REG_BANK_AER_BLOCK ;
 int MDIO_WC_DEVAD ;
 int MDIO_WC_REG_COMBO_IEEE0_MIICTRL ;
 int MDIO_WC_REG_IEEE0BLK_MIICNTL ;
 int MDIO_WC_REG_XGXSBLK0_XGXSCONTROL ;
 int MDIO_WC_REG_XGXSBLK1_LANECTRL2 ;
 int NETIF_MSG_LINK ;
 scalar_t__ SPEED_10000 ;
 int SUPPORTED_20000baseKR2_Full ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_cl45_read_or_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_get_warpcore_lane (struct bnx2x_phy*,struct link_params*) ;
 int bnx2x_set_aer_mmd (struct link_params*,struct bnx2x_phy*) ;

__attribute__((used)) static void bnx2x_set_warpcore_loopback(struct bnx2x_phy *phy,
     struct link_params *params)
{
 struct bnx2x *bp = params->bp;
 u16 val16;
 u32 lane;
 DP(NETIF_MSG_LINK, "Setting Warpcore loopback type %x, speed %d\n",
         params->loopback_mode, phy->req_line_speed);

 if (phy->req_line_speed < SPEED_10000 ||
     phy->supported & SUPPORTED_20000baseKR2_Full) {



  CL22_WR_OVER_CL45(bp, phy, MDIO_REG_BANK_AER_BLOCK,
      MDIO_AER_BLOCK_AER_REG, 0);

  bnx2x_cl45_read_or_write(bp, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_XGXSBLK0_XGXSCONTROL,
      0x10);

  lane = bnx2x_get_warpcore_lane(phy, params);
  bnx2x_cl45_read(bp, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_XGXSBLK1_LANECTRL2, &val16);
  val16 |= (1<<lane);
  if (phy->flags & FLAGS_WC_DUAL_MODE)
   val16 |= (2<<lane);
  bnx2x_cl45_write(bp, phy, MDIO_WC_DEVAD,
     MDIO_WC_REG_XGXSBLK1_LANECTRL2,
     val16);


  bnx2x_set_aer_mmd(params, phy);
 } else {

  bnx2x_cl45_read_or_write(bp, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_COMBO_IEEE0_MIICTRL,
      0x4000);
  bnx2x_cl45_read_or_write(bp, phy, MDIO_WC_DEVAD,
      MDIO_WC_REG_IEEE0BLK_MIICNTL, 0x1);
 }
}

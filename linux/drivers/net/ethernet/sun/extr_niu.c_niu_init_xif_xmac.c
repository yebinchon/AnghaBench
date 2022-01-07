
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu_link_config {scalar_t__ loopback_mode; scalar_t__ active_speed; } ;
struct niu {int flags; struct niu_link_config link_config; } ;


 scalar_t__ LOOPBACK_MAC ;
 int MIF_CONFIG ;
 int MIF_CONFIG_ATCA_GE ;
 int NIU_FLAGS_10G ;
 int NIU_FLAGS_FIBER ;
 int NIU_FLAGS_XCVR_SERDES ;
 scalar_t__ SPEED_100 ;
 scalar_t__ SPEED_1000 ;
 int XMAC_CONFIG ;
 int XMAC_CONFIG_10G_XPCS_BYPASS ;
 int XMAC_CONFIG_1G_PCS_BYPASS ;
 int XMAC_CONFIG_LFS_DISABLE ;
 int XMAC_CONFIG_LOOPBACK ;
 int XMAC_CONFIG_MODE_GMII ;
 int XMAC_CONFIG_MODE_MASK ;
 int XMAC_CONFIG_MODE_MII ;
 int XMAC_CONFIG_MODE_XGMII ;
 int XMAC_CONFIG_SEL_CLK_25MHZ ;
 int XMAC_CONFIG_SEL_POR_CLK_SRC ;
 int XMAC_CONFIG_TX_OUTPUT_EN ;
 int nr64 (int ) ;
 int nr64_mac (int ) ;
 int nw64 (int ,int ) ;
 int nw64_mac (int ,int ) ;

__attribute__((used)) static void niu_init_xif_xmac(struct niu *np)
{
 struct niu_link_config *lp = &np->link_config;
 u64 val;

 if (np->flags & NIU_FLAGS_XCVR_SERDES) {
  val = nr64(MIF_CONFIG);
  val |= MIF_CONFIG_ATCA_GE;
  nw64(MIF_CONFIG, val);
 }

 val = nr64_mac(XMAC_CONFIG);
 val &= ~XMAC_CONFIG_SEL_POR_CLK_SRC;

 val |= XMAC_CONFIG_TX_OUTPUT_EN;

 if (lp->loopback_mode == LOOPBACK_MAC) {
  val &= ~XMAC_CONFIG_SEL_POR_CLK_SRC;
  val |= XMAC_CONFIG_LOOPBACK;
 } else {
  val &= ~XMAC_CONFIG_LOOPBACK;
 }

 if (np->flags & NIU_FLAGS_10G) {
  val &= ~XMAC_CONFIG_LFS_DISABLE;
 } else {
  val |= XMAC_CONFIG_LFS_DISABLE;
  if (!(np->flags & NIU_FLAGS_FIBER) &&
      !(np->flags & NIU_FLAGS_XCVR_SERDES))
   val |= XMAC_CONFIG_1G_PCS_BYPASS;
  else
   val &= ~XMAC_CONFIG_1G_PCS_BYPASS;
 }

 val &= ~XMAC_CONFIG_10G_XPCS_BYPASS;

 if (lp->active_speed == SPEED_100)
  val |= XMAC_CONFIG_SEL_CLK_25MHZ;
 else
  val &= ~XMAC_CONFIG_SEL_CLK_25MHZ;

 nw64_mac(XMAC_CONFIG, val);

 val = nr64_mac(XMAC_CONFIG);
 val &= ~XMAC_CONFIG_MODE_MASK;
 if (np->flags & NIU_FLAGS_10G) {
  val |= XMAC_CONFIG_MODE_XGMII;
 } else {
  if (lp->active_speed == SPEED_1000)
   val |= XMAC_CONFIG_MODE_GMII;
  else
   val |= XMAC_CONFIG_MODE_MII;
 }

 nw64_mac(XMAC_CONFIG, val);
}

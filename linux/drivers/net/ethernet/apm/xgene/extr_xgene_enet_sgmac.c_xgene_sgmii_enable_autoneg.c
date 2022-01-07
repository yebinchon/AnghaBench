
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {int ndev; } ;


 int AUTO_NEG_COMPLETE ;
 int INT_PHY_ADDR ;
 int LINK_STATUS ;
 int SGMII_STATUS_ADDR ;
 int netdev_err (int ,char*) ;
 int usleep_range (int,int) ;
 int xgene_mii_phy_read (struct xgene_enet_pdata*,int ,int) ;
 int xgene_sgmii_configure (struct xgene_enet_pdata*) ;

__attribute__((used)) static void xgene_sgmii_enable_autoneg(struct xgene_enet_pdata *p)
{
 u32 data, loop = 10;

 xgene_sgmii_configure(p);

 while (loop--) {
  data = xgene_mii_phy_read(p, INT_PHY_ADDR,
       SGMII_STATUS_ADDR >> 2);
  if ((data & AUTO_NEG_COMPLETE) && (data & LINK_STATUS))
   break;
  usleep_range(1000, 2000);
 }
 if (!(data & AUTO_NEG_COMPLETE) || !(data & LINK_STATUS))
  netdev_err(p->ndev, "Auto-negotiation failed\n");
}

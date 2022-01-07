
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {int phy_speed; } ;


 int INT_PHY_ADDR ;
 scalar_t__ LINK_SPEED (int) ;
 int LINK_UP ;
 scalar_t__ PHY_SPEED_100 ;
 scalar_t__ PHY_SPEED_1000 ;
 int SGMII_BASE_PAGE_ABILITY_ADDR ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int xgene_mii_phy_read (struct xgene_enet_pdata*,int ,int) ;

__attribute__((used)) static u32 xgene_enet_link_status(struct xgene_enet_pdata *p)
{
 u32 data;

 data = xgene_mii_phy_read(p, INT_PHY_ADDR,
      SGMII_BASE_PAGE_ABILITY_ADDR >> 2);

 if (LINK_SPEED(data) == PHY_SPEED_1000)
  p->phy_speed = SPEED_1000;
 else if (LINK_SPEED(data) == PHY_SPEED_100)
  p->phy_speed = SPEED_100;
 else
  p->phy_speed = SPEED_10;

 return data & LINK_UP;
}

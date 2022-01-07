
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2 {scalar_t__ phy_port; int phy_flags; } ;


 int BNX2_PHY_FLAG_SERDES ;
 scalar_t__ PORT_FIBRE ;

__attribute__((used)) static char *
bnx2_xceiver_str(struct bnx2 *bp)
{
 return (bp->phy_port == PORT_FIBRE) ? "SerDes" :
  ((bp->phy_flags & BNX2_PHY_FLAG_SERDES) ? "Remote Copper" :
   "Copper");
}

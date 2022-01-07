
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int link_up; int autoneg; int duplex; int line_speed; int req_duplex; int req_line_speed; } ;


 int AUTONEG_SPEED ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int MII_BNX2_BLK_ADDR ;
 int MII_BNX2_BLK_ADDR_COMBO_IEEEB0 ;
 int MII_BNX2_BLK_ADDR_GP_STATUS ;
 int MII_BNX2_GP_TOP_AN_FD ;





 int MII_BNX2_GP_TOP_AN_SPEED_MSK ;
 int MII_BNX2_GP_TOP_AN_STATUS1 ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_2500 ;
 int bnx2_read_phy (struct bnx2*,int ,int*) ;
 int bnx2_write_phy (struct bnx2*,int ,int ) ;

__attribute__((used)) static int
bnx2_5709s_linkup(struct bnx2 *bp)
{
 u32 val, speed;

 bp->link_up = 1;

 bnx2_write_phy(bp, MII_BNX2_BLK_ADDR, MII_BNX2_BLK_ADDR_GP_STATUS);
 bnx2_read_phy(bp, MII_BNX2_GP_TOP_AN_STATUS1, &val);
 bnx2_write_phy(bp, MII_BNX2_BLK_ADDR, MII_BNX2_BLK_ADDR_COMBO_IEEEB0);

 if ((bp->autoneg & AUTONEG_SPEED) == 0) {
  bp->line_speed = bp->req_line_speed;
  bp->duplex = bp->req_duplex;
  return 0;
 }
 speed = val & MII_BNX2_GP_TOP_AN_SPEED_MSK;
 switch (speed) {
  case 132:
   bp->line_speed = SPEED_10;
   break;
  case 131:
   bp->line_speed = SPEED_100;
   break;
  case 130:
  case 129:
   bp->line_speed = SPEED_1000;
   break;
  case 128:
   bp->line_speed = SPEED_2500;
   break;
 }
 if (val & MII_BNX2_GP_TOP_AN_FD)
  bp->duplex = DUPLEX_FULL;
 else
  bp->duplex = DUPLEX_HALF;
 return 0;
}

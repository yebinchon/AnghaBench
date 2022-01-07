
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int link_up; int duplex; int line_speed; } ;


 int BCM5708S_1000X_STAT1 ;
 int BCM5708S_1000X_STAT1_FD ;




 int BCM5708S_1000X_STAT1_SPEED_MASK ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_2500 ;
 int bnx2_read_phy (struct bnx2*,int ,int*) ;

__attribute__((used)) static int
bnx2_5708s_linkup(struct bnx2 *bp)
{
 u32 val;

 bp->link_up = 1;
 bnx2_read_phy(bp, BCM5708S_1000X_STAT1, &val);
 switch (val & BCM5708S_1000X_STAT1_SPEED_MASK) {
  case 131:
   bp->line_speed = SPEED_10;
   break;
  case 130:
   bp->line_speed = SPEED_100;
   break;
  case 129:
   bp->line_speed = SPEED_1000;
   break;
  case 128:
   bp->line_speed = SPEED_2500;
   break;
 }
 if (val & BCM5708S_1000X_STAT1_FD)
  bp->duplex = DUPLEX_FULL;
 else
  bp->duplex = DUPLEX_HALF;

 return 0;
}

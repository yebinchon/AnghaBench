
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int link_up; void* duplex; int mii_lpa; int mii_adv; int mii_bmcr; int line_speed; } ;


 int ADVERTISE_1000XFULL ;
 int ADVERTISE_1000XHALF ;
 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 void* DUPLEX_FULL ;
 void* DUPLEX_HALF ;
 int SPEED_1000 ;
 int bnx2_read_phy (struct bnx2*,int ,int*) ;

__attribute__((used)) static int
bnx2_5706s_linkup(struct bnx2 *bp)
{
 u32 bmcr, local_adv, remote_adv, common;

 bp->link_up = 1;
 bp->line_speed = SPEED_1000;

 bnx2_read_phy(bp, bp->mii_bmcr, &bmcr);
 if (bmcr & BMCR_FULLDPLX) {
  bp->duplex = DUPLEX_FULL;
 }
 else {
  bp->duplex = DUPLEX_HALF;
 }

 if (!(bmcr & BMCR_ANENABLE)) {
  return 0;
 }

 bnx2_read_phy(bp, bp->mii_adv, &local_adv);
 bnx2_read_phy(bp, bp->mii_lpa, &remote_adv);

 common = local_adv & remote_adv;
 if (common & (ADVERTISE_1000XHALF | ADVERTISE_1000XFULL)) {

  if (common & ADVERTISE_1000XFULL) {
   bp->duplex = DUPLEX_FULL;
  }
  else {
   bp->duplex = DUPLEX_HALF;
  }
 }

 return 0;
}

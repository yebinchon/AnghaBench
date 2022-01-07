
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct lmac {int link_up; int last_duplex; int last_link; int dwork; int check_link; void* last_speed; int lmacid; int bgx; } ;


 int BGX_GMP_PCS_ANX_AN_RESULTS ;
 int BGX_GMP_PCS_MRX_STATUS ;
 void* DUPLEX_UNKNOWN ;
 int HZ ;
 int PCS_MRX_STATUS_AN_CPT ;
 int PCS_MRX_STATUS_LINK ;
 void* SPEED_10 ;
 void* SPEED_100 ;
 void* SPEED_1000 ;
 void* SPEED_UNKNOWN ;
 scalar_t__ bgx_poll_reg (int ,int ,int ,int ,int) ;
 int bgx_reg_read (int ,int ,int ) ;
 int bgx_sgmii_change_link_state (struct lmac*) ;
 int queue_delayed_work (int ,int *,int) ;

__attribute__((used)) static void bgx_poll_for_sgmii_link(struct lmac *lmac)
{
 u64 pcs_link, an_result;
 u8 speed;

 pcs_link = bgx_reg_read(lmac->bgx, lmac->lmacid,
    BGX_GMP_PCS_MRX_STATUS);


 if (!(pcs_link & PCS_MRX_STATUS_LINK))
  pcs_link = bgx_reg_read(lmac->bgx, lmac->lmacid,
     BGX_GMP_PCS_MRX_STATUS);

 if (bgx_poll_reg(lmac->bgx, lmac->lmacid, BGX_GMP_PCS_MRX_STATUS,
    PCS_MRX_STATUS_AN_CPT, 0)) {
  lmac->link_up = 0;
  lmac->last_speed = SPEED_UNKNOWN;
  lmac->last_duplex = DUPLEX_UNKNOWN;
  goto next_poll;
 }

 lmac->link_up = ((pcs_link & PCS_MRX_STATUS_LINK) != 0) ? 1 : 0;
 an_result = bgx_reg_read(lmac->bgx, lmac->lmacid,
     BGX_GMP_PCS_ANX_AN_RESULTS);

 speed = (an_result >> 3) & 0x3;
 lmac->last_duplex = (an_result >> 1) & 0x1;
 switch (speed) {
 case 0:
  lmac->last_speed = SPEED_10;
  break;
 case 1:
  lmac->last_speed = SPEED_100;
  break;
 case 2:
  lmac->last_speed = SPEED_1000;
  break;
 default:
  lmac->link_up = 0;
  lmac->last_speed = SPEED_UNKNOWN;
  lmac->last_duplex = DUPLEX_UNKNOWN;
  break;
 }

next_poll:

 if (lmac->last_link != lmac->link_up) {
  if (lmac->link_up)
   bgx_sgmii_change_link_state(lmac);
  lmac->last_link = lmac->link_up;
 }

 queue_delayed_work(lmac->check_link, &lmac->dwork, HZ * 3);
}

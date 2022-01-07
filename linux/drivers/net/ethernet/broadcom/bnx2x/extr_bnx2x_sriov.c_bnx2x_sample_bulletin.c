
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union pf_vf_bulletin {int dummy; } pf_vf_bulletin ;
typedef scalar_t__ u32 ;
struct pf_vf_bulletin_content {scalar_t__ crc; scalar_t__ version; int valid_bitmap; int link_flags; int link_speed; struct pf_vf_bulletin_content* mac; } ;
struct TYPE_6__ {scalar_t__ version; int mac; struct pf_vf_bulletin_content content; } ;
struct TYPE_5__ {scalar_t__ link_report_flags; int line_speed; } ;
struct bnx2x {TYPE_3__ old_bulletin; TYPE_2__ vf_link_vars; TYPE_1__* dev; TYPE_3__ shadow_bulletin; struct pf_vf_bulletin_content* pf2vf_bulletin; } ;
typedef enum sample_bulletin_result { ____Placeholder_sample_bulletin_result } sample_bulletin_result ;
struct TYPE_4__ {TYPE_3__* dev_addr; } ;


 int BNX2X_ERR (char*,int,...) ;
 int BNX2X_LINK_REPORT_FD ;
 int BNX2X_LINK_REPORT_LINK_DOWN ;
 int BNX2X_LINK_REPORT_RX_FC_ON ;
 int BNX2X_LINK_REPORT_TX_FC_ON ;
 int BNX2X_MSG_IOV ;
 int BULLETIN_ATTEMPTS ;
 int DP (int ,char*,int ,int) ;
 int ETH_ALEN ;
 int LINK_VALID ;
 int MAC_ADDR_VALID ;
 int PFVF_BULLETIN_CRC_ERR ;
 int PFVF_BULLETIN_UNCHANGED ;
 int PFVF_BULLETIN_UPDATED ;
 int VFPF_LINK_REPORT_FULL_DUPLEX ;
 int VFPF_LINK_REPORT_LINK_DOWN ;
 int VFPF_LINK_REPORT_RX_FC_ON ;
 int VFPF_LINK_REPORT_TX_FC_ON ;
 int __bnx2x_link_report (struct bnx2x*) ;
 int __set_bit (int ,scalar_t__*) ;
 scalar_t__ bnx2x_crc_vf_bulletin (struct pf_vf_bulletin_content*) ;
 int ether_addr_equal (struct pf_vf_bulletin_content*,int ) ;
 int memcpy (TYPE_3__*,struct pf_vf_bulletin_content*,int) ;

enum sample_bulletin_result bnx2x_sample_bulletin(struct bnx2x *bp)
{
 struct pf_vf_bulletin_content *bulletin;
 int attempts;




 for (attempts = 0; attempts < BULLETIN_ATTEMPTS; attempts++) {
  u32 crc;


  memcpy(&bp->shadow_bulletin, bp->pf2vf_bulletin,
         sizeof(union pf_vf_bulletin));

  crc = bnx2x_crc_vf_bulletin(&bp->shadow_bulletin.content);

  if (bp->shadow_bulletin.content.crc == crc)
   break;

  BNX2X_ERR("bad crc on bulletin board. Contained %x computed %x\n",
     bp->shadow_bulletin.content.crc, crc);
 }

 if (attempts >= BULLETIN_ATTEMPTS) {
  BNX2X_ERR("pf to vf bulletin board crc was wrong %d consecutive times. Aborting\n",
     attempts);
  return PFVF_BULLETIN_CRC_ERR;
 }
 bulletin = &bp->shadow_bulletin.content;


 if (bp->old_bulletin.version == bulletin->version)
  return PFVF_BULLETIN_UNCHANGED;


 if (bulletin->valid_bitmap & 1 << MAC_ADDR_VALID &&
     !ether_addr_equal(bulletin->mac, bp->old_bulletin.mac)) {

  memcpy(bp->dev->dev_addr, bulletin->mac, ETH_ALEN);
 }

 if (bulletin->valid_bitmap & (1 << LINK_VALID)) {
  DP(BNX2X_MSG_IOV, "link update speed %d flags %x\n",
     bulletin->link_speed, bulletin->link_flags);

  bp->vf_link_vars.line_speed = bulletin->link_speed;
  bp->vf_link_vars.link_report_flags = 0;

  if (bulletin->link_flags & VFPF_LINK_REPORT_LINK_DOWN)
   __set_bit(BNX2X_LINK_REPORT_LINK_DOWN,
      &bp->vf_link_vars.link_report_flags);

  if (bulletin->link_flags & VFPF_LINK_REPORT_FULL_DUPLEX)
   __set_bit(BNX2X_LINK_REPORT_FD,
      &bp->vf_link_vars.link_report_flags);

  if (bulletin->link_flags & VFPF_LINK_REPORT_RX_FC_ON)
   __set_bit(BNX2X_LINK_REPORT_RX_FC_ON,
      &bp->vf_link_vars.link_report_flags);

  if (bulletin->link_flags & VFPF_LINK_REPORT_TX_FC_ON)
   __set_bit(BNX2X_LINK_REPORT_TX_FC_ON,
      &bp->vf_link_vars.link_report_flags);
  __bnx2x_link_report(bp);
 }


 memcpy(&bp->old_bulletin, bulletin,
        sizeof(struct pf_vf_bulletin_content));

 return PFVF_BULLETIN_UPDATED;
}

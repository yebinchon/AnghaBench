
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct status_block {int status_attn_bits; int status_attn_bits_ack; } ;
struct TYPE_2__ {struct status_block* msi; } ;
struct bnx2_napi {TYPE_1__ status_blk; } ;
struct bnx2 {int hc_cmd; } ;


 int BNX2_HC_COMMAND ;
 int BNX2_HC_COMMAND_COAL_NOW_WO_INT ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 int STATUS_ATTN_EVENTS ;
 int bnx2_phy_int (struct bnx2*,struct bnx2_napi*) ;

__attribute__((used)) static void bnx2_poll_link(struct bnx2 *bp, struct bnx2_napi *bnapi)
{
 struct status_block *sblk = bnapi->status_blk.msi;
 u32 status_attn_bits = sblk->status_attn_bits;
 u32 status_attn_bits_ack = sblk->status_attn_bits_ack;

 if ((status_attn_bits & STATUS_ATTN_EVENTS) !=
     (status_attn_bits_ack & STATUS_ATTN_EVENTS)) {

  bnx2_phy_int(bp, bnapi);




  BNX2_WR(bp, BNX2_HC_COMMAND,
   bp->hc_cmd | BNX2_HC_COMMAND_COAL_NOW_WO_INT);
  BNX2_RD(bp, BNX2_HC_COMMAND);
 }
}

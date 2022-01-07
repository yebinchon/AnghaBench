
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2_napi {int int_num; } ;
struct bnx2 {int irq_nvecs; struct bnx2_napi* bnx2_napi; } ;


 int BNX2_PCICFG_INT_ACK_CMD ;
 int BNX2_PCICFG_INT_ACK_CMD_MASK_INT ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int) ;

__attribute__((used)) static void
bnx2_disable_int(struct bnx2 *bp)
{
 int i;
 struct bnx2_napi *bnapi;

 for (i = 0; i < bp->irq_nvecs; i++) {
  bnapi = &bp->bnx2_napi[i];
  BNX2_WR(bp, BNX2_PCICFG_INT_ACK_CMD, bnapi->int_num |
         BNX2_PCICFG_INT_ACK_CMD_MASK_INT);
 }
 BNX2_RD(bp, BNX2_PCICFG_INT_ACK_CMD);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int indirect_lock; } ;


 scalar_t__ BNX2_CHIP (struct bnx2*) ;
 scalar_t__ BNX2_CHIP_5709 ;
 int BNX2_CTX_CTX_CTRL ;
 int BNX2_CTX_CTX_CTRL_WRITE_REQ ;
 int BNX2_CTX_CTX_DATA ;
 int BNX2_CTX_DATA ;
 int BNX2_CTX_DATA_ADR ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void
bnx2_ctx_wr(struct bnx2 *bp, u32 cid_addr, u32 offset, u32 val)
{
 unsigned long flags;

 offset += cid_addr;
 spin_lock_irqsave(&bp->indirect_lock, flags);
 if (BNX2_CHIP(bp) == BNX2_CHIP_5709) {
  int i;

  BNX2_WR(bp, BNX2_CTX_CTX_DATA, val);
  BNX2_WR(bp, BNX2_CTX_CTX_CTRL,
   offset | BNX2_CTX_CTX_CTRL_WRITE_REQ);
  for (i = 0; i < 5; i++) {
   val = BNX2_RD(bp, BNX2_CTX_CTX_CTRL);
   if ((val & BNX2_CTX_CTX_CTRL_WRITE_REQ) == 0)
    break;
   udelay(5);
  }
 } else {
  BNX2_WR(bp, BNX2_CTX_DATA_ADR, offset);
  BNX2_WR(bp, BNX2_CTX_DATA, val);
 }
 spin_unlock_irqrestore(&bp->indirect_lock, flags);
}

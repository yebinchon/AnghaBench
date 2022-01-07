
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct bnx2 {int ctx_pages; int* ctx_blk_mapping; scalar_t__* ctx_blk; } ;


 int BNX2_CTX_COMMAND ;
 int BNX2_CTX_COMMAND_ENABLED ;
 int BNX2_CTX_COMMAND_MEM_INIT ;
 int BNX2_CTX_HOST_PAGE_TBL_CTRL ;
 int BNX2_CTX_HOST_PAGE_TBL_CTRL_WRITE_REQ ;
 int BNX2_CTX_HOST_PAGE_TBL_DATA0 ;
 int BNX2_CTX_HOST_PAGE_TBL_DATA0_VALID ;
 int BNX2_CTX_HOST_PAGE_TBL_DATA1 ;
 int BNX2_PAGE_BITS ;
 int BNX2_PAGE_SIZE ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 int EBUSY ;
 int ENOMEM ;
 int memset (scalar_t__,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static int
bnx2_init_5709_context(struct bnx2 *bp)
{
 int i, ret = 0;
 u32 val;

 val = BNX2_CTX_COMMAND_ENABLED | BNX2_CTX_COMMAND_MEM_INIT | (1 << 12);
 val |= (BNX2_PAGE_BITS - 8) << 16;
 BNX2_WR(bp, BNX2_CTX_COMMAND, val);
 for (i = 0; i < 10; i++) {
  val = BNX2_RD(bp, BNX2_CTX_COMMAND);
  if (!(val & BNX2_CTX_COMMAND_MEM_INIT))
   break;
  udelay(2);
 }
 if (val & BNX2_CTX_COMMAND_MEM_INIT)
  return -EBUSY;

 for (i = 0; i < bp->ctx_pages; i++) {
  int j;

  if (bp->ctx_blk[i])
   memset(bp->ctx_blk[i], 0, BNX2_PAGE_SIZE);
  else
   return -ENOMEM;

  BNX2_WR(bp, BNX2_CTX_HOST_PAGE_TBL_DATA0,
   (bp->ctx_blk_mapping[i] & 0xffffffff) |
   BNX2_CTX_HOST_PAGE_TBL_DATA0_VALID);
  BNX2_WR(bp, BNX2_CTX_HOST_PAGE_TBL_DATA1,
   (u64) bp->ctx_blk_mapping[i] >> 32);
  BNX2_WR(bp, BNX2_CTX_HOST_PAGE_TBL_CTRL, i |
   BNX2_CTX_HOST_PAGE_TBL_CTRL_WRITE_REQ);
  for (j = 0; j < 10; j++) {

   val = BNX2_RD(bp, BNX2_CTX_HOST_PAGE_TBL_CTRL);
   if (!(val & BNX2_CTX_HOST_PAGE_TBL_CTRL_WRITE_REQ))
    break;
   udelay(5);
  }
  if (val & BNX2_CTX_HOST_PAGE_TBL_CTRL_WRITE_REQ) {
   ret = -EBUSY;
   break;
  }
 }
 return ret;
}

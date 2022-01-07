
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int dummy; } ;


 scalar_t__ BNX2_CHIP_ID (struct bnx2*) ;
 scalar_t__ BNX2_CHIP_ID_5706_A0 ;
 int BNX2_CTX_PAGE_TBL ;
 int BNX2_CTX_VIRT_ADDR ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 int CTX_SIZE ;
 int GET_CID_ADDR (int) ;
 int GET_PCID_ADDR (int) ;
 int PHY_CTX_SHIFT ;
 int PHY_CTX_SIZE ;
 int bnx2_ctx_wr (struct bnx2*,int,int,int ) ;

__attribute__((used)) static void
bnx2_init_context(struct bnx2 *bp)
{
 u32 vcid;

 vcid = 96;
 while (vcid) {
  u32 vcid_addr, pcid_addr, offset;
  int i;

  vcid--;

  if (BNX2_CHIP_ID(bp) == BNX2_CHIP_ID_5706_A0) {
   u32 new_vcid;

   vcid_addr = GET_PCID_ADDR(vcid);
   if (vcid & 0x8) {
    new_vcid = 0x60 + (vcid & 0xf0) + (vcid & 0x7);
   }
   else {
    new_vcid = vcid;
   }
   pcid_addr = GET_PCID_ADDR(new_vcid);
  }
  else {
       vcid_addr = GET_CID_ADDR(vcid);
   pcid_addr = vcid_addr;
  }

  for (i = 0; i < (CTX_SIZE / PHY_CTX_SIZE); i++) {
   vcid_addr += (i << PHY_CTX_SHIFT);
   pcid_addr += (i << PHY_CTX_SHIFT);

   BNX2_WR(bp, BNX2_CTX_VIRT_ADDR, vcid_addr);
   BNX2_WR(bp, BNX2_CTX_PAGE_TBL, pcid_addr);


   for (offset = 0; offset < PHY_CTX_SIZE; offset += 4)
    bnx2_ctx_wr(bp, vcid_addr, offset, 0);
  }
 }
}

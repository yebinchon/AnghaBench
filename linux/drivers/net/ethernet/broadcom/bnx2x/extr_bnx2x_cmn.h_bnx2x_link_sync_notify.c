
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int BP_MAX_VN_NUM (struct bnx2x*) ;
 int BP_VN (struct bnx2x*) ;
 int LINK_SYNC_ATTENTION_BIT_FUNC_0 ;
 scalar_t__ MISC_REG_AEU_GENERAL_ATTN_0 ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int VN_0 ;
 int func_by_vn (struct bnx2x*,int) ;

__attribute__((used)) static inline void bnx2x_link_sync_notify(struct bnx2x *bp)
{
 int func;
 int vn;


 for (vn = VN_0; vn < BP_MAX_VN_NUM(bp); vn++) {
  if (vn == BP_VN(bp))
   continue;

  func = func_by_vn(bp, vn);
  REG_WR(bp, MISC_REG_AEU_GENERAL_ATTN_0 +
         (LINK_SYNC_ATTENTION_BIT_FUNC_0 + func)*4, 1);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x_fastpath {int cl_id; int cl_qzone_id; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;


 int BAR_USTRORM_INTMEM ;
 int BP_PORT (struct bnx2x*) ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 scalar_t__ IS_VF (struct bnx2x*) ;
 scalar_t__ USTORM_RX_PRODS_E1X_OFFSET (int ,int ) ;
 scalar_t__ USTORM_RX_PRODS_E2_OFFSET (int ) ;
 int bnx2x_vf_ustorm_prods_offset (struct bnx2x*,struct bnx2x_fastpath*) ;

__attribute__((used)) static u32 bnx2x_rx_ustorm_prods_offset(struct bnx2x_fastpath *fp)
{
 struct bnx2x *bp = fp->bp;
 u32 offset = BAR_USTRORM_INTMEM;

 if (IS_VF(bp))
  return bnx2x_vf_ustorm_prods_offset(bp, fp);
 else if (!CHIP_IS_E1x(bp))
  offset += USTORM_RX_PRODS_E2_OFFSET(fp->cl_qzone_id);
 else
  offset += USTORM_RX_PRODS_E1X_OFFSET(BP_PORT(bp), fp->cl_id);

 return offset;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int BP_ABS_FUNC (struct bnx2x*) ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 int PGLUE_B_REG_WAS_ERROR_PF_7_0_CLR ;
 int REG_WR (struct bnx2x*,int ,int) ;

__attribute__((used)) static void bnx2x_clean_pglue_errors(struct bnx2x *bp)
{
 if (!CHIP_IS_E1x(bp))
  REG_WR(bp, PGLUE_B_REG_WAS_ERROR_PF_7_0_CLR,
         1 << BP_ABS_FUNC(bp));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 scalar_t__ BAR_CSTRORM_INTMEM ;
 scalar_t__ BAR_USTRORM_INTMEM ;
 scalar_t__ CHIP_INT_MODE_IS_BC (struct bnx2x*) ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 scalar_t__ CSTORM_IGU_MODE_OFFSET ;
 int HC_IGU_BC_MODE ;
 int HC_IGU_NBC_MODE ;
 int REG_WR (struct bnx2x*,scalar_t__,int ) ;
 int REG_WR8 (struct bnx2x*,scalar_t__,int ) ;
 scalar_t__ USTORM_AGG_DATA_OFFSET ;
 int USTORM_AGG_DATA_SIZE ;

__attribute__((used)) static void bnx2x_init_internal_common(struct bnx2x *bp)
{
 int i;



 for (i = 0; i < (USTORM_AGG_DATA_SIZE >> 2); i++)
  REG_WR(bp, BAR_USTRORM_INTMEM +
         USTORM_AGG_DATA_OFFSET + i * 4, 0);
 if (!CHIP_IS_E1x(bp)) {
  REG_WR8(bp, BAR_CSTRORM_INTMEM + CSTORM_IGU_MODE_OFFSET,
   CHIP_INT_MODE_IS_BC(bp) ?
   HC_IGU_BC_MODE : HC_IGU_NBC_MODE);
 }
}

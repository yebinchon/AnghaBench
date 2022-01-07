
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int CHIP_IS_E1 (struct bnx2x*) ;
 scalar_t__ CHIP_IS_E1x (struct bnx2x*) ;
 int DP (int,char*,char*) ;
 int HC_CONFIG_0_REG_BLOCK_DISABLE_0 ;
 int HC_CONFIG_1_REG_BLOCK_DISABLE_1 ;
 int HC_REG_CONFIG_0 ;
 int HC_REG_CONFIG_1 ;
 int IGU_BLOCK_CONFIGURATION_REG_BLOCK_ENABLE ;
 int IGU_REG_BLOCK_CONFIGURATION ;
 int NETIF_MSG_HW ;
 int NETIF_MSG_IFUP ;
 int PXP_REG_HST_DISCARD_DOORBELLS ;
 int PXP_REG_HST_DISCARD_INTERNAL_WRITES ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int) ;

__attribute__((used)) static void bnx2x_set_234_gates(struct bnx2x *bp, bool close)
{
 u32 val;


 if (!CHIP_IS_E1(bp)) {

  REG_WR(bp, PXP_REG_HST_DISCARD_DOORBELLS, !!close);

  REG_WR(bp, PXP_REG_HST_DISCARD_INTERNAL_WRITES, !!close);
 }


 if (CHIP_IS_E1x(bp)) {

  val = REG_RD(bp, HC_REG_CONFIG_1);
  REG_WR(bp, HC_REG_CONFIG_1,
         (!close) ? (val | HC_CONFIG_1_REG_BLOCK_DISABLE_1) :
         (val & ~(u32)HC_CONFIG_1_REG_BLOCK_DISABLE_1));

  val = REG_RD(bp, HC_REG_CONFIG_0);
  REG_WR(bp, HC_REG_CONFIG_0,
         (!close) ? (val | HC_CONFIG_0_REG_BLOCK_DISABLE_0) :
         (val & ~(u32)HC_CONFIG_0_REG_BLOCK_DISABLE_0));
 } else {

  val = REG_RD(bp, IGU_REG_BLOCK_CONFIGURATION);

  REG_WR(bp, IGU_REG_BLOCK_CONFIGURATION,
         (!close) ?
         (val | IGU_BLOCK_CONFIGURATION_REG_BLOCK_ENABLE) :
         (val & ~(u32)IGU_BLOCK_CONFIGURATION_REG_BLOCK_ENABLE));
 }

 DP(NETIF_MSG_HW | NETIF_MSG_IFUP, "%s gates #2, #3 and #4\n",
  close ? "closing" : "opening");
}

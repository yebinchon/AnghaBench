
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int PXP2_REG_RD_CDURD_SWAP_MODE ;
 int PXP2_REG_RD_QM_SWAP_MODE ;
 int PXP2_REG_RD_SRC_SWAP_MODE ;
 int PXP2_REG_RD_TM_SWAP_MODE ;
 int PXP2_REG_RQ_CDU_ENDIAN_M ;
 int PXP2_REG_RQ_DBG_ENDIAN_M ;
 int PXP2_REG_RQ_HC_ENDIAN_M ;
 int PXP2_REG_RQ_QM_ENDIAN_M ;
 int PXP2_REG_RQ_SRC_ENDIAN_M ;
 int PXP2_REG_RQ_TM_ENDIAN_M ;
 int REG_WR (struct bnx2x*,int ,int ) ;

__attribute__((used)) static void bnx2x_config_endianity(struct bnx2x *bp, u32 val)
{
 REG_WR(bp, PXP2_REG_RQ_QM_ENDIAN_M, val);
 REG_WR(bp, PXP2_REG_RQ_TM_ENDIAN_M, val);
 REG_WR(bp, PXP2_REG_RQ_SRC_ENDIAN_M, val);
 REG_WR(bp, PXP2_REG_RQ_CDU_ENDIAN_M, val);
 REG_WR(bp, PXP2_REG_RQ_DBG_ENDIAN_M, val);


 REG_WR(bp, PXP2_REG_RQ_HC_ENDIAN_M, 0);

 REG_WR(bp, PXP2_REG_RD_QM_SWAP_MODE, val);
 REG_WR(bp, PXP2_REG_RD_TM_SWAP_MODE, val);
 REG_WR(bp, PXP2_REG_RD_SRC_SWAP_MODE, val);
 REG_WR(bp, PXP2_REG_RD_CDURD_SWAP_MODE, val);
}

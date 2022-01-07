
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int* mf_config; } ;


 size_t BP_VN (struct bnx2x*) ;
 int DRV_MSG_CODE_SET_MF_BW ;
 int FUNC_MF_CFG_MAX_BW_MASK ;
 int FUNC_MF_CFG_MAX_BW_SHIFT ;
 int bnx2x_extract_max_cfg (struct bnx2x*,int) ;
 int bnx2x_fw_command (struct bnx2x*,int ,int) ;

void bnx2x_update_max_mf_config(struct bnx2x *bp, u32 value)
{

 u32 mf_cfg = bp->mf_config[BP_VN(bp)];

 if (value != bnx2x_extract_max_cfg(bp, mf_cfg)) {

  mf_cfg &= ~FUNC_MF_CFG_MAX_BW_MASK;


  mf_cfg |= (value << FUNC_MF_CFG_MAX_BW_SHIFT)
    & FUNC_MF_CFG_MAX_BW_MASK;

  bnx2x_fw_command(bp, DRV_MSG_CODE_SET_MF_BW, mf_cfg);
 }
}

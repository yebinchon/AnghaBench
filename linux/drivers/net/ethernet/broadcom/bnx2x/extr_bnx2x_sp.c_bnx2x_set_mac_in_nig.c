
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_LLH_CAM_MAX_PF_LINE ;
 int BNX2X_MSG_SP ;
 scalar_t__ BP_PORT (struct bnx2x*) ;
 int DP (int ,char*,char*,int) ;
 int IS_MF_AFEX (struct bnx2x*) ;
 int IS_MF_SI (struct bnx2x*) ;
 int NIG_REG_LLH0_FUNC_MEM ;
 scalar_t__ NIG_REG_LLH0_FUNC_MEM_ENABLE ;
 int NIG_REG_LLH1_FUNC_MEM ;
 scalar_t__ NIG_REG_LLH1_FUNC_MEM_ENABLE ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int REG_WR_DMAE (struct bnx2x*,int,int*,int) ;

__attribute__((used)) static void bnx2x_set_mac_in_nig(struct bnx2x *bp,
     bool add, unsigned char *dev_addr, int index)
{
 u32 wb_data[2];
 u32 reg_offset = BP_PORT(bp) ? NIG_REG_LLH1_FUNC_MEM :
    NIG_REG_LLH0_FUNC_MEM;

 if (!IS_MF_SI(bp) && !IS_MF_AFEX(bp))
  return;

 if (index > BNX2X_LLH_CAM_MAX_PF_LINE)
  return;

 DP(BNX2X_MSG_SP, "Going to %s LLH configuration at entry %d\n",
    (add ? "ADD" : "DELETE"), index);

 if (add) {

  reg_offset += 8*index;

  wb_data[0] = ((dev_addr[2] << 24) | (dev_addr[3] << 16) |
         (dev_addr[4] << 8) | dev_addr[5]);
  wb_data[1] = ((dev_addr[0] << 8) | dev_addr[1]);

  REG_WR_DMAE(bp, reg_offset, wb_data, 2);
 }

 REG_WR(bp, (BP_PORT(bp) ? NIG_REG_LLH1_FUNC_MEM_ENABLE :
      NIG_REG_LLH0_FUNC_MEM_ENABLE) + 4*index, add);
}

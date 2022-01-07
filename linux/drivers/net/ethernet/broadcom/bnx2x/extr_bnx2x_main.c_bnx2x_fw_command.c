
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct bnx2x {int fw_seq; int fw_mb_mutex; } ;
struct TYPE_2__ {int fw_mb_header; int drv_mb_header; int drv_mb_param; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_MSG_MCP ;
 int BP_FW_MB_IDX (struct bnx2x*) ;
 scalar_t__ CHIP_REV_IS_SLOW (struct bnx2x*) ;
 int DP (int ,char*,int,int,...) ;
 int FW_MSG_CODE_MASK ;
 int FW_MSG_SEQ_NUMBER_MASK ;
 int SHMEM_RD (struct bnx2x*,int ) ;
 int SHMEM_WR (struct bnx2x*,int ,int) ;
 int bnx2x_fw_dump (struct bnx2x*) ;
 TYPE_1__* func_mb ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

u32 bnx2x_fw_command(struct bnx2x *bp, u32 command, u32 param)
{
 int mb_idx = BP_FW_MB_IDX(bp);
 u32 seq;
 u32 rc = 0;
 u32 cnt = 1;
 u8 delay = CHIP_REV_IS_SLOW(bp) ? 100 : 10;

 mutex_lock(&bp->fw_mb_mutex);
 seq = ++bp->fw_seq;
 SHMEM_WR(bp, func_mb[mb_idx].drv_mb_param, param);
 SHMEM_WR(bp, func_mb[mb_idx].drv_mb_header, (command | seq));

 DP(BNX2X_MSG_MCP, "wrote command (%x) to FW MB param 0x%08x\n",
   (command | seq), param);

 do {

  msleep(delay);

  rc = SHMEM_RD(bp, func_mb[mb_idx].fw_mb_header);


 } while ((seq != (rc & FW_MSG_SEQ_NUMBER_MASK)) && (cnt++ < 500));

 DP(BNX2X_MSG_MCP, "[after %d ms] read (%x) seq is (%x) from FW MB\n",
    cnt*delay, rc, seq);


 if (seq == (rc & FW_MSG_SEQ_NUMBER_MASK))
  rc &= FW_MSG_CODE_MASK;
 else {

  BNX2X_ERR("FW failed to respond!\n");
  bnx2x_fw_dump(bp);
  rc = 0;
 }
 mutex_unlock(&bp->fw_mb_mutex);

 return rc;
}

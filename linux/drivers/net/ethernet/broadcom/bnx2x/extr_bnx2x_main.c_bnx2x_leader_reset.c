
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnx2x {scalar_t__ is_leader; } ;


 int BNX2X_ERR (char*,...) ;
 int BP_NOMCP (struct bnx2x*) ;
 int BP_PATH (struct bnx2x*) ;
 int DRV_MSG_CODE_LOAD_DONE ;
 int DRV_MSG_CODE_LOAD_REQ ;
 int DRV_MSG_CODE_LOAD_REQ_WITH_LFA ;
 int DRV_MSG_CODE_UNLOAD_DONE ;
 int DRV_MSG_CODE_UNLOAD_REQ_WOL_MCP ;
 int EAGAIN ;
 scalar_t__ FW_MSG_CODE_DRV_LOAD_COMMON ;
 scalar_t__ FW_MSG_CODE_DRV_LOAD_COMMON_CHIP ;
 int bnx2x_clear_reset_global (struct bnx2x*) ;
 scalar_t__ bnx2x_fw_command (struct bnx2x*,int ,int ) ;
 scalar_t__ bnx2x_process_kill (struct bnx2x*,int) ;
 int bnx2x_release_leader_lock (struct bnx2x*) ;
 int bnx2x_reset_is_global (struct bnx2x*) ;
 int bnx2x_set_reset_done (struct bnx2x*) ;
 int smp_mb () ;

__attribute__((used)) static int bnx2x_leader_reset(struct bnx2x *bp)
{
 int rc = 0;
 bool global = bnx2x_reset_is_global(bp);
 u32 load_code;




 if (!global && !BP_NOMCP(bp)) {
  load_code = bnx2x_fw_command(bp, DRV_MSG_CODE_LOAD_REQ,
          DRV_MSG_CODE_LOAD_REQ_WITH_LFA);
  if (!load_code) {
   BNX2X_ERR("MCP response failure, aborting\n");
   rc = -EAGAIN;
   goto exit_leader_reset;
  }
  if ((load_code != FW_MSG_CODE_DRV_LOAD_COMMON_CHIP) &&
      (load_code != FW_MSG_CODE_DRV_LOAD_COMMON)) {
   BNX2X_ERR("MCP unexpected resp, aborting\n");
   rc = -EAGAIN;
   goto exit_leader_reset2;
  }
  load_code = bnx2x_fw_command(bp, DRV_MSG_CODE_LOAD_DONE, 0);
  if (!load_code) {
   BNX2X_ERR("MCP response failure, aborting\n");
   rc = -EAGAIN;
   goto exit_leader_reset2;
  }
 }


 if (bnx2x_process_kill(bp, global)) {
  BNX2X_ERR("Something bad had happen on engine %d! Aii!\n",
     BP_PATH(bp));
  rc = -EAGAIN;
  goto exit_leader_reset2;
 }





 bnx2x_set_reset_done(bp);
 if (global)
  bnx2x_clear_reset_global(bp);

exit_leader_reset2:

 if (!global && !BP_NOMCP(bp)) {
  bnx2x_fw_command(bp, DRV_MSG_CODE_UNLOAD_REQ_WOL_MCP, 0);
  bnx2x_fw_command(bp, DRV_MSG_CODE_UNLOAD_DONE, 0);
 }
exit_leader_reset:
 bp->is_leader = 0;
 bnx2x_release_leader_lock(bp);
 smp_mb();
 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x_virtf {int flr_clnup_stage; } ;
struct bnx2x {TYPE_1__* vfdb; } ;
struct TYPE_2__ {int* flrd_vfs; } ;


 int BNX2X_MSG_IOV ;
 int BNX2X_MSG_MCP ;
 int BNX2X_NR_VIRTFN (struct bnx2x*) ;
 size_t BP_FW_MB_IDX (struct bnx2x*) ;
 struct bnx2x_virtf* BP_VF (struct bnx2x*,int) ;
 int CHANNEL_TLV_FLR ;
 int DP (int ,char*,int,int) ;
 int DRV_MSG_CODE_VF_DISABLED_DONE ;
 int FLRD_VFS_DWORDS ;
 int SHMEM2_WR (struct bnx2x*,int ,int) ;
 scalar_t__ VF_RESET ;
 int bnx2x_fw_command (struct bnx2x*,int ,int ) ;
 int bnx2x_lock_vf_pf_channel (struct bnx2x*,struct bnx2x_virtf*,int ) ;
 int bnx2x_unlock_vf_pf_channel (struct bnx2x*,struct bnx2x_virtf*,int ) ;
 scalar_t__ bnx2x_vf (struct bnx2x*,int,int ) ;
 int bnx2x_vf_flr (struct bnx2x*,struct bnx2x_virtf*) ;
 int ** drv_ack_vf_disabled ;
 int flr_clnup_stage ;
 int state ;

__attribute__((used)) static void bnx2x_vf_flr_clnup(struct bnx2x *bp)
{
 struct bnx2x_virtf *vf;
 int i;

 for (i = 0; i < BNX2X_NR_VIRTFN(bp); i++) {

  if (bnx2x_vf(bp, i, state) != VF_RESET ||
      !bnx2x_vf(bp, i, flr_clnup_stage))
   continue;

  DP(BNX2X_MSG_IOV, "next vf to cleanup: %d. Num of vfs: %d\n",
     i, BNX2X_NR_VIRTFN(bp));

  vf = BP_VF(bp, i);


  bnx2x_lock_vf_pf_channel(bp, vf, CHANNEL_TLV_FLR);


  bnx2x_vf_flr(bp, vf);


  vf->flr_clnup_stage = 0;
  bnx2x_unlock_vf_pf_channel(bp, vf, CHANNEL_TLV_FLR);
 }
 DP(BNX2X_MSG_MCP, "DRV_STATUS_VF_DISABLED ACK for vfs 0x%x 0x%x\n",
    bp->vfdb->flrd_vfs[0], bp->vfdb->flrd_vfs[1]);
 for (i = 0; i < FLRD_VFS_DWORDS; i++)
  SHMEM2_WR(bp, drv_ack_vf_disabled[BP_FW_MB_IDX(bp)][i],
     bp->vfdb->flrd_vfs[i]);

 bnx2x_fw_command(bp, DRV_MSG_CODE_VF_DISABLED_DONE, 0);




 for (i = 0; i < FLRD_VFS_DWORDS; i++)
  SHMEM2_WR(bp, drv_ack_vf_disabled[BP_FW_MB_IDX(bp)][i], 0);
}

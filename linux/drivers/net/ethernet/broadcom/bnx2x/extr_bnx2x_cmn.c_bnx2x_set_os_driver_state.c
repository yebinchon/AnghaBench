
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 size_t BP_FW_MB_IDX (struct bnx2x*) ;
 int DP (int ,char*,int ,int ) ;
 int IS_MF_BD (struct bnx2x*) ;
 scalar_t__ IS_VF (struct bnx2x*) ;
 int NETIF_MSG_IFUP ;
 int SHMEM2_HAS (struct bnx2x*,int *) ;
 int SHMEM2_RD (struct bnx2x*,int ) ;
 int SHMEM2_WR (struct bnx2x*,int ,int ) ;
 int * os_driver_state ;

void bnx2x_set_os_driver_state(struct bnx2x *bp, u32 state)
{
 u32 cur;

 if (!IS_MF_BD(bp) || !SHMEM2_HAS(bp, os_driver_state) || IS_VF(bp))
  return;

 cur = SHMEM2_RD(bp, os_driver_state[BP_FW_MB_IDX(bp)]);
 DP(NETIF_MSG_IFUP, "Driver state %08x-->%08x\n",
    cur, state);

 SHMEM2_WR(bp, os_driver_state[BP_FW_MB_IDX(bp)], state);
}

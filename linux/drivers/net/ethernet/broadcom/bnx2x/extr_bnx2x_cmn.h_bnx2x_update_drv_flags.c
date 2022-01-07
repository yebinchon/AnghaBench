
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,scalar_t__) ;
 int HW_LOCK_RESOURCE_DRV_FLAGS ;
 int NETIF_MSG_IFUP ;
 int RESET_FLAGS (scalar_t__,scalar_t__) ;
 int SET_FLAGS (scalar_t__,scalar_t__) ;
 scalar_t__ SHMEM2_HAS (struct bnx2x*,int ) ;
 scalar_t__ SHMEM2_RD (struct bnx2x*,scalar_t__) ;
 int SHMEM2_WR (struct bnx2x*,scalar_t__,scalar_t__) ;
 int bnx2x_acquire_hw_lock (struct bnx2x*,int ) ;
 int bnx2x_release_hw_lock (struct bnx2x*,int ) ;
 int drv_flags ;

__attribute__((used)) static inline void bnx2x_update_drv_flags(struct bnx2x *bp, u32 flags, u32 set)
{
 if (SHMEM2_HAS(bp, drv_flags)) {
  u32 drv_flags;
  bnx2x_acquire_hw_lock(bp, HW_LOCK_RESOURCE_DRV_FLAGS);
  drv_flags = SHMEM2_RD(bp, drv_flags);

  if (set)
   SET_FLAGS(drv_flags, flags);
  else
   RESET_FLAGS(drv_flags, flags);

  SHMEM2_WR(bp, drv_flags, drv_flags);
  DP(NETIF_MSG_IFUP, "drv_flags 0x%08x\n", drv_flags);
  bnx2x_release_hw_lock(bp, HW_LOCK_RESOURCE_DRV_FLAGS);
 }
}

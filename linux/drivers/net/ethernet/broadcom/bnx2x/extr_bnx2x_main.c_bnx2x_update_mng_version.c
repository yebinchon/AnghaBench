
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union drv_info_to_mcp {int dummy; } drv_info_to_mcp ;
typedef int u8 ;
typedef int u32 ;
struct bnx2x {scalar_t__ state; int drv_info_mutex; TYPE_3__* slowpath; scalar_t__ drv_info_mng_owner; } ;
struct TYPE_11__ {int * versions; } ;
struct TYPE_8__ {int * version; } ;
struct TYPE_7__ {int * version; } ;
struct TYPE_10__ {TYPE_2__ fcoe_stat; TYPE_1__ iscsi_stat; } ;
struct TYPE_9__ {TYPE_4__ drv_info_to_mcp; } ;


 int BNX2X_MSG_MCP ;
 scalar_t__ BNX2X_STATE_OPEN ;
 int BP_FW_MB_IDX (struct bnx2x*) ;
 int CNIC_LOADED (struct bnx2x*) ;
 int DP (int ,char*,int ,int ,int ) ;
 int * DRV_MODULE_VERSION ;
 size_t DRV_PERS_ETHERNET ;
 size_t DRV_PERS_FCOE ;
 size_t DRV_PERS_ISCSI ;
 int DRV_VER_NOT_LOADED ;
 int SHMEM2_HAS (struct bnx2x*,TYPE_5__*) ;
 int SHMEM2_WR (struct bnx2x*,int ,int ) ;
 int bnx2x_drv_info_fcoe_stat (struct bnx2x*) ;
 int bnx2x_drv_info_iscsi_stat (struct bnx2x*) ;
 int bnx2x_update_mng_version_utility (int *,int) ;
 TYPE_5__* func_os_drv_ver ;
 int memset (TYPE_4__*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void bnx2x_update_mng_version(struct bnx2x *bp)
{
 u32 iscsiver = DRV_VER_NOT_LOADED;
 u32 fcoever = DRV_VER_NOT_LOADED;
 u32 ethver = DRV_VER_NOT_LOADED;
 int idx = BP_FW_MB_IDX(bp);
 u8 *version;

 if (!SHMEM2_HAS(bp, func_os_drv_ver))
  return;

 mutex_lock(&bp->drv_info_mutex);

 if (bp->drv_info_mng_owner)
  goto out;

 if (bp->state != BNX2X_STATE_OPEN)
  goto out;


 ethver = bnx2x_update_mng_version_utility(DRV_MODULE_VERSION, 1);
 if (!CNIC_LOADED(bp))
  goto out;


 memset(&bp->slowpath->drv_info_to_mcp, 0,
        sizeof(union drv_info_to_mcp));
 bnx2x_drv_info_iscsi_stat(bp);
 version = bp->slowpath->drv_info_to_mcp.iscsi_stat.version;
 iscsiver = bnx2x_update_mng_version_utility(version, 0);

 memset(&bp->slowpath->drv_info_to_mcp, 0,
        sizeof(union drv_info_to_mcp));
 bnx2x_drv_info_fcoe_stat(bp);
 version = bp->slowpath->drv_info_to_mcp.fcoe_stat.version;
 fcoever = bnx2x_update_mng_version_utility(version, 0);

out:
 SHMEM2_WR(bp, func_os_drv_ver[idx].versions[DRV_PERS_ETHERNET], ethver);
 SHMEM2_WR(bp, func_os_drv_ver[idx].versions[DRV_PERS_ISCSI], iscsiver);
 SHMEM2_WR(bp, func_os_drv_ver[idx].versions[DRV_PERS_FCOE], fcoever);

 mutex_unlock(&bp->drv_info_mutex);

 DP(BNX2X_MSG_MCP, "Setting driver version: ETH [%08x] iSCSI [%08x] FCoE [%08x]\n",
    ethver, iscsiver, fcoever);
}

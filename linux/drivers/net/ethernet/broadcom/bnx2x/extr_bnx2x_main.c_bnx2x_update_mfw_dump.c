
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bnx2x {int dummy; } ;
struct TYPE_3__ {int valid_dump; int fw_ver; int drv_ver; int epoc; } ;


 int DP (int ,char*) ;
 int DRV_MODULE_VERSION ;
 int FIRST_DUMP_VALID ;
 int NETIF_MSG_IFUP ;
 int REG_RD (struct bnx2x*,int ) ;
 int SECOND_DUMP_VALID ;
 int SHMEM2_HAS (struct bnx2x*,TYPE_1__) ;
 int SHMEM2_RD (struct bnx2x*,int ) ;
 int SHMEM2_WR (struct bnx2x*,int ,int) ;
 int XSEM_REG_PRAM ;
 int bnx2x_update_mng_version_utility (int ,int) ;
 TYPE_1__ drv_info ;
 scalar_t__ ktime_get_real_seconds () ;

void bnx2x_update_mfw_dump(struct bnx2x *bp)
{
 u32 drv_ver;
 u32 valid_dump;

 if (!SHMEM2_HAS(bp, drv_info))
  return;


 SHMEM2_WR(bp, drv_info.epoc, (u32)ktime_get_real_seconds());

 drv_ver = bnx2x_update_mng_version_utility(DRV_MODULE_VERSION, 1);
 SHMEM2_WR(bp, drv_info.drv_ver, drv_ver);

 SHMEM2_WR(bp, drv_info.fw_ver, REG_RD(bp, XSEM_REG_PRAM));


 valid_dump = SHMEM2_RD(bp, drv_info.valid_dump);

 if (valid_dump & FIRST_DUMP_VALID)
  DP(NETIF_MSG_IFUP, "A valid On-Chip MFW dump found on 1st partition\n");

 if (valid_dump & SECOND_DUMP_VALID)
  DP(NETIF_MSG_IFUP, "A valid On-Chip MFW dump found on 2nd partition\n");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int pmf; } ;
struct bnx2x {TYPE_1__ port; } ;


 int DP (int ,char*,int) ;
 scalar_t__ FW_MSG_CODE_DRV_LOAD_COMMON ;
 scalar_t__ FW_MSG_CODE_DRV_LOAD_COMMON_CHIP ;
 scalar_t__ FW_MSG_CODE_DRV_LOAD_PORT ;
 int NETIF_MSG_LINK ;
 int smp_mb () ;

__attribute__((used)) static void bnx2x_nic_load_pmf(struct bnx2x *bp, u32 load_code)
{
 if ((load_code == FW_MSG_CODE_DRV_LOAD_COMMON) ||
     (load_code == FW_MSG_CODE_DRV_LOAD_COMMON_CHIP) ||
     (load_code == FW_MSG_CODE_DRV_LOAD_PORT)) {
  bp->port.pmf = 1;




  smp_mb();
 } else {
  bp->port.pmf = 0;
 }

 DP(NETIF_MSG_LINK, "pmf %d\n", bp->port.pmf);
}

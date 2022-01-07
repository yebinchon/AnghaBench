
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int shmem2_base; int shmem_base; } ;
struct bnx2x {TYPE_2__ common; } ;
struct TYPE_4__ {int config2; } ;
struct TYPE_6__ {TYPE_1__ shared_hw_config; } ;


 scalar_t__ BP_NOMCP (struct bnx2x*) ;
 int DP (int ,char*,int) ;
 int MISC_REG_SPIO_EVENT_EN ;
 int MISC_REG_SPIO_INT ;
 int MISC_SPIO_INPUT_HI_Z ;
 int MISC_SPIO_INT_OLD_SET_POS ;
 int MISC_SPIO_SPIO5 ;
 int NETIF_MSG_HW ;
 int PORT_0 ;
 int PORT_MAX ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int SHARED_HW_CFG_FAN_FAILURE_ENABLED ;
 int SHARED_HW_CFG_FAN_FAILURE_MASK ;
 int SHARED_HW_CFG_FAN_FAILURE_PHY_TYPE ;
 int SHMEM_RD (struct bnx2x*,int ) ;
 int bnx2x_fan_failure_det_req (struct bnx2x*,int ,int ,int) ;
 int bnx2x_set_spio (struct bnx2x*,int,int ) ;
 TYPE_3__ dev_info ;

__attribute__((used)) static void bnx2x_setup_fan_failure_detection(struct bnx2x *bp)
{
 int is_required;
 u32 val;
 int port;

 if (BP_NOMCP(bp))
  return;

 is_required = 0;
 val = SHMEM_RD(bp, dev_info.shared_hw_config.config2) &
       SHARED_HW_CFG_FAN_FAILURE_MASK;

 if (val == SHARED_HW_CFG_FAN_FAILURE_ENABLED)
  is_required = 1;






 else if (val == SHARED_HW_CFG_FAN_FAILURE_PHY_TYPE)
  for (port = PORT_0; port < PORT_MAX; port++) {
   is_required |=
    bnx2x_fan_failure_det_req(
     bp,
     bp->common.shmem_base,
     bp->common.shmem2_base,
     port);
  }

 DP(NETIF_MSG_HW, "fan detection setting: %d\n", is_required);

 if (is_required == 0)
  return;


 bnx2x_set_spio(bp, MISC_SPIO_SPIO5, MISC_SPIO_INPUT_HI_Z);


 val = REG_RD(bp, MISC_REG_SPIO_INT);
 val |= (MISC_SPIO_SPIO5 << MISC_SPIO_INT_OLD_SET_POS);
 REG_WR(bp, MISC_REG_SPIO_INT, val);


 val = REG_RD(bp, MISC_REG_SPIO_EVENT_EN);
 val |= MISC_SPIO_SPIO5;
 REG_WR(bp, MISC_REG_SPIO_EVENT_EN, val);
}

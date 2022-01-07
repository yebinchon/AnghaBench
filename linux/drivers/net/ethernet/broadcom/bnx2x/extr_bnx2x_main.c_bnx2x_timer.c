
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct timer_list {int dummy; } ;
struct bnx2x {int fw_drv_pulse_wr_seq; scalar_t__ state; scalar_t__ current_interval; int timer; int dev; } ;
struct TYPE_2__ {int mcp_pulse_mb; } ;


 int BNX2X_ERR (char*,int,int) ;
 scalar_t__ BNX2X_STATE_OPEN ;
 int BP_FW_MB_IDX (struct bnx2x*) ;
 int BP_NOMCP (struct bnx2x*) ;
 int DRV_PULSE_SEQ_MASK ;
 scalar_t__ IS_PF (struct bnx2x*) ;
 scalar_t__ IS_VF (struct bnx2x*) ;
 int MCP_PULSE_SEQ_MASK ;
 int SHMEM_RD (struct bnx2x*,int ) ;
 int STATS_EVENT_UPDATE ;
 int bnx2x_drv_pulse (struct bnx2x*) ;
 int bnx2x_stats_handle (struct bnx2x*,int ) ;
 int bnx2x_timer_sriov (struct bnx2x*) ;
 struct bnx2x* bp ;
 struct bnx2x* from_timer (int ,struct timer_list*,int ) ;
 TYPE_1__* func_mb ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int netif_running (int ) ;
 int timer ;

__attribute__((used)) static void bnx2x_timer(struct timer_list *t)
{
 struct bnx2x *bp = from_timer(bp, t, timer);

 if (!netif_running(bp->dev))
  return;

 if (IS_PF(bp) &&
     !BP_NOMCP(bp)) {
  int mb_idx = BP_FW_MB_IDX(bp);
  u16 drv_pulse;
  u16 mcp_pulse;

  ++bp->fw_drv_pulse_wr_seq;
  bp->fw_drv_pulse_wr_seq &= DRV_PULSE_SEQ_MASK;
  drv_pulse = bp->fw_drv_pulse_wr_seq;
  bnx2x_drv_pulse(bp);

  mcp_pulse = (SHMEM_RD(bp, func_mb[mb_idx].mcp_pulse_mb) &
        MCP_PULSE_SEQ_MASK);





  if (((drv_pulse - mcp_pulse) & MCP_PULSE_SEQ_MASK) > 5)
   BNX2X_ERR("MFW seems hanged: drv_pulse (0x%x) != mcp_pulse (0x%x)\n",
      drv_pulse, mcp_pulse);
 }

 if (bp->state == BNX2X_STATE_OPEN)
  bnx2x_stats_handle(bp, STATS_EVENT_UPDATE);


 if (IS_VF(bp))
  bnx2x_timer_sriov(bp);

 mod_timer(&bp->timer, jiffies + bp->current_interval);
}

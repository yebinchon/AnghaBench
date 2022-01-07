
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ int_block; } ;
struct TYPE_4__ {int pmf; } ;
struct bnx2x {TYPE_1__ common; int period_task; TYPE_2__ port; } ;


 int BNX2X_MSG_MCP ;
 int BP_PORT (struct bnx2x*) ;
 int BP_VN (struct bnx2x*) ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 int DP (int ,char*,int) ;
 scalar_t__ HC_REG_LEADING_EDGE_0 ;
 scalar_t__ HC_REG_TRAILING_EDGE_0 ;
 scalar_t__ IGU_REG_LEADING_EDGE_LATCH ;
 scalar_t__ IGU_REG_TRAILING_EDGE_LATCH ;
 scalar_t__ INT_BLOCK_HC ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int STATS_EVENT_PMF ;
 int bnx2x_dcbx_pmf_update (struct bnx2x*) ;
 int bnx2x_stats_handle (struct bnx2x*,int ) ;
 int bnx2x_wq ;
 int queue_delayed_work (int ,int *,int ) ;
 int smp_mb () ;

__attribute__((used)) static void bnx2x_pmf_update(struct bnx2x *bp)
{
 int port = BP_PORT(bp);
 u32 val;

 bp->port.pmf = 1;
 DP(BNX2X_MSG_MCP, "pmf %d\n", bp->port.pmf);





 smp_mb();


 queue_delayed_work(bnx2x_wq, &bp->period_task, 0);

 bnx2x_dcbx_pmf_update(bp);


 val = (0xff0f | (1 << (BP_VN(bp) + 4)));
 if (bp->common.int_block == INT_BLOCK_HC) {
  REG_WR(bp, HC_REG_TRAILING_EDGE_0 + port*8, val);
  REG_WR(bp, HC_REG_LEADING_EDGE_0 + port*8, val);
 } else if (!CHIP_IS_E1x(bp)) {
  REG_WR(bp, IGU_REG_TRAILING_EDGE_LATCH, val);
  REG_WR(bp, IGU_REG_LEADING_EDGE_LATCH, val);
 }

 bnx2x_stats_handle(bp, STATS_EVENT_PMF);
}

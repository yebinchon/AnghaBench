
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2x {int stats_pending; int fw_stats_req_mapping; TYPE_1__* fw_stats_req; int stats_counter; } ;
struct TYPE_4__ {int drv_stats_counter; } ;
struct TYPE_3__ {TYPE_2__ hdr; } ;


 int BNX2X_MSG_STATS ;
 int DP (int ,char*,int ) ;
 int NONE_CONNECTION_TYPE ;
 int RAMROD_CMD_ID_COMMON_STAT_QUERY ;
 int U64_HI (int ) ;
 int U64_LO (int ) ;
 int bnx2x_dp_stats (struct bnx2x*) ;
 int bnx2x_iov_adjust_stats_req (struct bnx2x*) ;
 int bnx2x_sp_post (struct bnx2x*,int ,int ,int ,int ,int ) ;
 int cpu_to_le16 (int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void bnx2x_storm_stats_post(struct bnx2x *bp)
{
 int rc;

 if (bp->stats_pending)
  return;

 bp->fw_stats_req->hdr.drv_stats_counter =
  cpu_to_le16(bp->stats_counter++);

 DP(BNX2X_MSG_STATS, "Sending statistics ramrod %d\n",
    le16_to_cpu(bp->fw_stats_req->hdr.drv_stats_counter));


 bnx2x_iov_adjust_stats_req(bp);
 bnx2x_dp_stats(bp);


 rc = bnx2x_sp_post(bp, RAMROD_CMD_ID_COMMON_STAT_QUERY, 0,
      U64_HI(bp->fw_stats_req_mapping),
      U64_LO(bp->fw_stats_req_mapping),
      NONE_CONNECTION_TYPE);
 if (rc == 0)
  bp->stats_pending = 1;
}

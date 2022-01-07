
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stats_query_header {int dummy; } ;
struct stats_query_cmd_group {int dummy; } ;
struct stats_counter {int dummy; } ;
struct per_queue_stats {int dummy; } ;
struct per_port_stats {int dummy; } ;
struct per_pf_stats {int dummy; } ;
struct fcoe_statistics_params {int dummy; } ;
struct bnx2x_fw_stats_req {int dummy; } ;
struct bnx2x_fw_stats_data {int dummy; } ;
struct bnx2x {int fw_stats_num; int fw_stats_req_sz; int fw_stats_data_sz; scalar_t__ fw_stats_data_mapping; scalar_t__ fw_stats_req_mapping; scalar_t__ fw_stats_mapping; scalar_t__ fw_stats; struct bnx2x_fw_stats_data* fw_stats_data; struct bnx2x_fw_stats_req* fw_stats_req; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_MSG_SP ;
 int BNX2X_NUM_ETH_QUEUES (struct bnx2x*) ;
 scalar_t__ BNX2X_PCI_ALLOC (scalar_t__*,int) ;
 int DP (int ,char*,int,int,...) ;
 int ENOMEM ;
 scalar_t__ IS_SRIOV (struct bnx2x*) ;
 scalar_t__ NO_FCOE (struct bnx2x*) ;
 int STATS_QUERY_CMD_COUNT ;
 int U64_HI (scalar_t__) ;
 int U64_LO (scalar_t__) ;
 int bnx2x_free_fw_stats_mem (struct bnx2x*) ;
 int bnx2x_vf_headroom (struct bnx2x*) ;

__attribute__((used)) static int bnx2x_alloc_fw_stats_mem(struct bnx2x *bp)
{
 int num_groups, vf_headroom = 0;
 int is_fcoe_stats = NO_FCOE(bp) ? 0 : 1;


 u8 num_queue_stats = BNX2X_NUM_ETH_QUEUES(bp) + is_fcoe_stats;






 bp->fw_stats_num = 2 + is_fcoe_stats + num_queue_stats;






 if (IS_SRIOV(bp))
  vf_headroom = bnx2x_vf_headroom(bp);






 num_groups =
  (((bp->fw_stats_num + vf_headroom) / STATS_QUERY_CMD_COUNT) +
   (((bp->fw_stats_num + vf_headroom) % STATS_QUERY_CMD_COUNT) ?
   1 : 0));

 DP(BNX2X_MSG_SP, "stats fw_stats_num %d, vf headroom %d, num_groups %d\n",
    bp->fw_stats_num, vf_headroom, num_groups);
 bp->fw_stats_req_sz = sizeof(struct stats_query_header) +
  num_groups * sizeof(struct stats_query_cmd_group);
 bp->fw_stats_data_sz = sizeof(struct per_port_stats) +
  sizeof(struct per_pf_stats) +
  sizeof(struct fcoe_statistics_params) +
  sizeof(struct per_queue_stats) * num_queue_stats +
  sizeof(struct stats_counter);

 bp->fw_stats = BNX2X_PCI_ALLOC(&bp->fw_stats_mapping,
           bp->fw_stats_data_sz + bp->fw_stats_req_sz);
 if (!bp->fw_stats)
  goto alloc_mem_err;


 bp->fw_stats_req = (struct bnx2x_fw_stats_req *)bp->fw_stats;
 bp->fw_stats_req_mapping = bp->fw_stats_mapping;
 bp->fw_stats_data = (struct bnx2x_fw_stats_data *)
  ((u8 *)bp->fw_stats + bp->fw_stats_req_sz);
 bp->fw_stats_data_mapping = bp->fw_stats_mapping +
  bp->fw_stats_req_sz;

 DP(BNX2X_MSG_SP, "statistics request base address set to %x %x\n",
    U64_HI(bp->fw_stats_req_mapping),
    U64_LO(bp->fw_stats_req_mapping));
 DP(BNX2X_MSG_SP, "statistics data base address set to %x %x\n",
    U64_HI(bp->fw_stats_data_mapping),
    U64_LO(bp->fw_stats_data_mapping));
 return 0;

alloc_mem_err:
 bnx2x_free_fw_stats_mem(bp);
 BNX2X_ERR("Can't allocate FW stats memory\n");
 return -ENOMEM;
}

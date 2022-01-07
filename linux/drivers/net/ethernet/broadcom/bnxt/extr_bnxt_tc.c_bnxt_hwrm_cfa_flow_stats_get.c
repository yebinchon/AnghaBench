
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwrm_cfa_flow_stats_output {int byte_0; int packet_0; } ;
struct hwrm_cfa_flow_stats_input {int num_flows; int flow_id_0; int flow_handle_0; int member_0; } ;
struct TYPE_2__ {void* bytes; void* packets; } ;
struct bnxt_tc_stats_batch {TYPE_1__ hw_stats; struct bnxt_tc_flow_node* flow_node; } ;
struct bnxt_tc_flow_node {int dummy; } ;
struct bnxt {int hwrm_cmd_lock; int dev; } ;
typedef int req ;
typedef int __le64 ;
typedef int __le32 ;
typedef int __le16 ;


 int HWRM_CFA_FLOW_STATS ;
 int HWRM_CMD_TIMEOUT ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_cfa_flow_stats_input*,int,int ) ;
 int bnxt_fill_cfa_stats_req (struct bnxt*,struct bnxt_tc_flow_node*,int *,int *) ;
 struct hwrm_cfa_flow_stats_output* bnxt_get_hwrm_resp_addr (struct bnxt*,struct hwrm_cfa_flow_stats_input*) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_cfa_flow_stats_input*,int ,int,int) ;
 int cpu_to_le16 (int) ;
 void* le64_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_info (int ,char*,int) ;

__attribute__((used)) static int
bnxt_hwrm_cfa_flow_stats_get(struct bnxt *bp, int num_flows,
        struct bnxt_tc_stats_batch stats_batch[])
{
 struct hwrm_cfa_flow_stats_input req = { 0 };
 struct hwrm_cfa_flow_stats_output *resp;
 __le16 *req_flow_handles = &req.flow_handle_0;
 __le32 *req_flow_ids = &req.flow_id_0;
 int rc, i;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_CFA_FLOW_STATS, -1, -1);
 req.num_flows = cpu_to_le16(num_flows);
 for (i = 0; i < num_flows; i++) {
  struct bnxt_tc_flow_node *flow_node = stats_batch[i].flow_node;

  bnxt_fill_cfa_stats_req(bp, flow_node,
     &req_flow_handles[i], &req_flow_ids[i]);
 }

 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (!rc) {
  __le64 *resp_packets;
  __le64 *resp_bytes;

  resp = bnxt_get_hwrm_resp_addr(bp, &req);
  resp_packets = &resp->packet_0;
  resp_bytes = &resp->byte_0;

  for (i = 0; i < num_flows; i++) {
   stats_batch[i].hw_stats.packets =
      le64_to_cpu(resp_packets[i]);
   stats_batch[i].hw_stats.bytes =
      le64_to_cpu(resp_bytes[i]);
  }
 } else {
  netdev_info(bp->dev, "error rc=%d", rc);
 }
 mutex_unlock(&bp->hwrm_cmd_lock);

 return rc;
}

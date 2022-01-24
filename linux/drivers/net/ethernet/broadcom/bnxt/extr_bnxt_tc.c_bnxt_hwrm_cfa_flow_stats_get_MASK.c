#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hwrm_cfa_flow_stats_output {int /*<<< orphan*/  byte_0; int /*<<< orphan*/  packet_0; } ;
struct hwrm_cfa_flow_stats_input {int /*<<< orphan*/  num_flows; int /*<<< orphan*/  flow_id_0; int /*<<< orphan*/  flow_handle_0; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {void* bytes; void* packets; } ;
struct bnxt_tc_stats_batch {TYPE_1__ hw_stats; struct bnxt_tc_flow_node* flow_node; } ;
struct bnxt_tc_flow_node {int dummy; } ;
struct bnxt {int /*<<< orphan*/  hwrm_cmd_lock; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  __le64 ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  HWRM_CFA_FLOW_STATS ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int FUNC0 (struct bnxt*,struct hwrm_cfa_flow_stats_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*,struct bnxt_tc_flow_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct hwrm_cfa_flow_stats_output* FUNC2 (struct bnxt*,struct hwrm_cfa_flow_stats_input*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*,struct hwrm_cfa_flow_stats_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC9(struct bnxt *bp, int num_flows,
			     struct bnxt_tc_stats_batch stats_batch[])
{
	struct hwrm_cfa_flow_stats_input req = { 0 };
	struct hwrm_cfa_flow_stats_output *resp;
	__le16 *req_flow_handles = &req.flow_handle_0;
	__le32 *req_flow_ids = &req.flow_id_0;
	int rc, i;

	FUNC3(bp, &req, HWRM_CFA_FLOW_STATS, -1, -1);
	req.num_flows = FUNC4(num_flows);
	for (i = 0; i < num_flows; i++) {
		struct bnxt_tc_flow_node *flow_node = stats_batch[i].flow_node;

		FUNC1(bp, flow_node,
					&req_flow_handles[i], &req_flow_ids[i]);
	}

	FUNC6(&bp->hwrm_cmd_lock);
	rc = FUNC0(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	if (!rc) {
		__le64 *resp_packets;
		__le64 *resp_bytes;

		resp = FUNC2(bp, &req);
		resp_packets = &resp->packet_0;
		resp_bytes = &resp->byte_0;

		for (i = 0; i < num_flows; i++) {
			stats_batch[i].hw_stats.packets =
						FUNC5(resp_packets[i]);
			stats_batch[i].hw_stats.bytes =
						FUNC5(resp_bytes[i]);
		}
	} else {
		FUNC8(bp->dev, "error rc=%d", rc);
	}
	FUNC7(&bp->hwrm_cmd_lock);

	return rc;
}
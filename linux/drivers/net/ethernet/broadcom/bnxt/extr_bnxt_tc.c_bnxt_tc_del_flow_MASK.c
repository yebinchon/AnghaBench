#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct flow_cls_offload {int /*<<< orphan*/  cookie; } ;
struct bnxt_tc_info {int /*<<< orphan*/  flow_ht_params; int /*<<< orphan*/  flow_table; } ;
struct bnxt_tc_flow_node {int dummy; } ;
struct bnxt {struct bnxt_tc_info* tc_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct bnxt*,struct bnxt_tc_flow_node*) ; 
 struct bnxt_tc_flow_node* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct bnxt *bp,
			    struct flow_cls_offload *tc_flow_cmd)
{
	struct bnxt_tc_info *tc_info = bp->tc_info;
	struct bnxt_tc_flow_node *flow_node;

	flow_node = FUNC1(&tc_info->flow_table,
					   &tc_flow_cmd->cookie,
					   tc_info->flow_ht_params);
	if (!flow_node)
		return -EINVAL;

	return FUNC0(bp, flow_node);
}
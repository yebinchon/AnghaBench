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
struct bnxt_tc_info {int /*<<< orphan*/  decap_ht_params; int /*<<< orphan*/  decap_table; } ;
struct bnxt_tc_flow_node {TYPE_1__* decap_node; scalar_t__ decap_l2_node; } ;
struct bnxt {struct bnxt_tc_info* tc_info; } ;
typedef  scalar_t__ __le32 ;
struct TYPE_2__ {scalar_t__ tunnel_handle; } ;

/* Variables and functions */
 scalar_t__ INVALID_TUNNEL_HANDLE ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt*,struct bnxt_tc_flow_node*) ; 
 int FUNC1 (struct bnxt*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct bnxt *bp,
				     struct bnxt_tc_flow_node *flow_node)
{
	__le32 decap_handle = flow_node->decap_node->tunnel_handle;
	struct bnxt_tc_info *tc_info = bp->tc_info;
	int rc;

	if (flow_node->decap_l2_node)
		FUNC0(bp, flow_node);

	rc = FUNC1(bp, &tc_info->decap_table,
				     &tc_info->decap_ht_params,
				     flow_node->decap_node);
	if (!rc && decap_handle != INVALID_TUNNEL_HANDLE)
		FUNC2(bp, decap_handle);
}
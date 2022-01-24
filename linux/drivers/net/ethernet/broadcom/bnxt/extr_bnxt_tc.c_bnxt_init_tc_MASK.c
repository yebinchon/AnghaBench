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
struct bnxt_tc_info {int enabled; int /*<<< orphan*/  flow_table; int /*<<< orphan*/  l2_table; int /*<<< orphan*/  decap_l2_table; int /*<<< orphan*/  decap_table; void* encap_ht_params; int /*<<< orphan*/  encap_table; void* decap_ht_params; void* decap_l2_ht_params; void* l2_ht_params; void* flow_ht_params; void* packets_mask; void* bytes_mask; int /*<<< orphan*/  lock; } ;
struct bnxt {int hwrm_spec_code; struct bnxt_tc_info* tc_info; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  features; int /*<<< orphan*/  hw_features; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NETIF_F_HW_TC ; 
 void* bnxt_tc_decap_l2_ht_params ; 
 void* bnxt_tc_flow_ht_params ; 
 void* bnxt_tc_l2_ht_params ; 
 void* bnxt_tc_tunnel_ht_params ; 
 int /*<<< orphan*/  FUNC0 (struct bnxt_tc_info*) ; 
 struct bnxt_tc_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,void**) ; 

int FUNC7(struct bnxt *bp)
{
	struct bnxt_tc_info *tc_info;
	int rc;

	if (bp->hwrm_spec_code < 0x10803) {
		FUNC4(bp->dev,
			    "Firmware does not support TC flower offload.\n");
		return -ENOTSUPP;
	}

	tc_info = FUNC1(sizeof(*tc_info), GFP_KERNEL);
	if (!tc_info)
		return -ENOMEM;
	FUNC3(&tc_info->lock);

	/* Counter widths are programmed by FW */
	tc_info->bytes_mask = FUNC2(36);
	tc_info->packets_mask = FUNC2(28);

	tc_info->flow_ht_params = bnxt_tc_flow_ht_params;
	rc = FUNC6(&tc_info->flow_table, &tc_info->flow_ht_params);
	if (rc)
		goto free_tc_info;

	tc_info->l2_ht_params = bnxt_tc_l2_ht_params;
	rc = FUNC6(&tc_info->l2_table, &tc_info->l2_ht_params);
	if (rc)
		goto destroy_flow_table;

	tc_info->decap_l2_ht_params = bnxt_tc_decap_l2_ht_params;
	rc = FUNC6(&tc_info->decap_l2_table,
			     &tc_info->decap_l2_ht_params);
	if (rc)
		goto destroy_l2_table;

	tc_info->decap_ht_params = bnxt_tc_tunnel_ht_params;
	rc = FUNC6(&tc_info->decap_table,
			     &tc_info->decap_ht_params);
	if (rc)
		goto destroy_decap_l2_table;

	tc_info->encap_ht_params = bnxt_tc_tunnel_ht_params;
	rc = FUNC6(&tc_info->encap_table,
			     &tc_info->encap_ht_params);
	if (rc)
		goto destroy_decap_table;

	tc_info->enabled = true;
	bp->dev->hw_features |= NETIF_F_HW_TC;
	bp->dev->features |= NETIF_F_HW_TC;
	bp->tc_info = tc_info;
	return 0;

destroy_decap_table:
	FUNC5(&tc_info->decap_table);
destroy_decap_l2_table:
	FUNC5(&tc_info->decap_l2_table);
destroy_l2_table:
	FUNC5(&tc_info->l2_table);
destroy_flow_table:
	FUNC5(&tc_info->flow_table);
free_tc_info:
	FUNC0(tc_info);
	return rc;
}
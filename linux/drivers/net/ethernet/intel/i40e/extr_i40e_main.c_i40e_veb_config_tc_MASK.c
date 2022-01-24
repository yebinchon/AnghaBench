#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct i40e_veb {int enabled_tc; int /*<<< orphan*/  seid; struct i40e_pf* pf; } ;
struct TYPE_7__ {int /*<<< orphan*/  asq_last_status; } ;
struct TYPE_8__ {TYPE_2__ aq; } ;
struct i40e_pf {TYPE_3__ hw; TYPE_1__* pdev; } ;
struct i40e_aqc_configure_switching_comp_bw_config_data {int tc_valid_bits; int* tc_bw_share_credits; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int I40E_MAX_TRAFFIC_CLASS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,struct i40e_aqc_configure_switching_comp_bw_config_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int FUNC5 (struct i40e_veb*) ; 

int FUNC6(struct i40e_veb *veb, u8 enabled_tc)
{
	struct i40e_aqc_configure_switching_comp_bw_config_data bw_data = {0};
	struct i40e_pf *pf = veb->pf;
	int ret = 0;
	int i;

	/* No TCs or already enabled TCs just return */
	if (!enabled_tc || veb->enabled_tc == enabled_tc)
		return ret;

	bw_data.tc_valid_bits = enabled_tc;
	/* bw_data.absolute_credits is not set (relative) */

	/* Enable ETS TCs with equal BW Share for now */
	for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
		if (enabled_tc & FUNC0(i))
			bw_data.tc_bw_share_credits[i] = 1;
	}

	ret = FUNC2(&pf->hw, veb->seid,
						   &bw_data, NULL);
	if (ret) {
		FUNC1(&pf->pdev->dev,
			 "VEB bw config failed, err %s aq_err %s\n",
			 FUNC4(&pf->hw, ret),
			 FUNC3(&pf->hw, pf->hw.aq.asq_last_status));
		goto out;
	}

	/* Update the BW information */
	ret = FUNC5(veb);
	if (ret) {
		FUNC1(&pf->pdev->dev,
			 "Failed getting veb bw config, err %s aq_err %s\n",
			 FUNC4(&pf->hw, ret),
			 FUNC3(&pf->hw, pf->hw.aq.asq_last_status));
	}

out:
	return ret;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct i40e_veb {int bw_limit; int* bw_tc_limit_credits; int* bw_tc_max_quanta; int /*<<< orphan*/ * bw_tc_share_credits; int /*<<< orphan*/  enabled_tc; int /*<<< orphan*/  is_abs_credits; int /*<<< orphan*/  bw_max_quanta; int /*<<< orphan*/  seid; struct i40e_pf* pf; } ;
struct TYPE_4__ {int /*<<< orphan*/  asq_last_status; } ;
struct i40e_hw {TYPE_2__ aq; } ;
struct i40e_pf {struct i40e_hw hw; TYPE_1__* pdev; } ;
struct i40e_aqc_query_switching_comp_ets_config_resp {int /*<<< orphan*/  tc_valid_bits; int /*<<< orphan*/  tc_bw_max; int /*<<< orphan*/  port_bw_limit; } ;
struct i40e_aqc_query_switching_comp_bw_config_resp {int /*<<< orphan*/ * tc_bw_limits; int /*<<< orphan*/ * tc_bw_share_credits; int /*<<< orphan*/ * tc_bw_max; int /*<<< orphan*/  absolute_credits_enable; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int I40E_MAX_TRAFFIC_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i40e_hw*,int /*<<< orphan*/ ,struct i40e_aqc_query_switching_comp_bw_config_resp*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,struct i40e_aqc_query_switching_comp_ets_config_resp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i40e_hw*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i40e_veb *veb)
{
	struct i40e_aqc_query_switching_comp_ets_config_resp ets_data;
	struct i40e_aqc_query_switching_comp_bw_config_resp bw_data;
	struct i40e_pf *pf = veb->pf;
	struct i40e_hw *hw = &pf->hw;
	u32 tc_bw_max;
	int ret = 0;
	int i;

	ret = FUNC1(hw, veb->seid,
						  &bw_data, NULL);
	if (ret) {
		FUNC0(&pf->pdev->dev,
			 "query veb bw config failed, err %s aq_err %s\n",
			 FUNC4(&pf->hw, ret),
			 FUNC3(&pf->hw, hw->aq.asq_last_status));
		goto out;
	}

	ret = FUNC2(hw, veb->seid,
						   &ets_data, NULL);
	if (ret) {
		FUNC0(&pf->pdev->dev,
			 "query veb bw ets config failed, err %s aq_err %s\n",
			 FUNC4(&pf->hw, ret),
			 FUNC3(&pf->hw, hw->aq.asq_last_status));
		goto out;
	}

	veb->bw_limit = FUNC5(ets_data.port_bw_limit);
	veb->bw_max_quanta = ets_data.tc_bw_max;
	veb->is_abs_credits = bw_data.absolute_credits_enable;
	veb->enabled_tc = ets_data.tc_valid_bits;
	tc_bw_max = FUNC5(bw_data.tc_bw_max[0]) |
		    (FUNC5(bw_data.tc_bw_max[1]) << 16);
	for (i = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
		veb->bw_tc_share_credits[i] = bw_data.tc_bw_share_credits[i];
		veb->bw_tc_limit_credits[i] =
					FUNC5(bw_data.tc_bw_limits[i]);
		veb->bw_tc_max_quanta[i] = ((tc_bw_max >> (i*4)) & 0x7);
	}

out:
	return ret;
}
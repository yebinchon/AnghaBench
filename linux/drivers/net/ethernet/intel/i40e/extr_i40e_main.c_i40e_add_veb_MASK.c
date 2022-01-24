#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct i40e_vsi {int /*<<< orphan*/  flags; int /*<<< orphan*/  veb_idx; int /*<<< orphan*/  uplink_seid; int /*<<< orphan*/  seid; } ;
struct i40e_veb {int /*<<< orphan*/  idx; int /*<<< orphan*/  seid; int /*<<< orphan*/  stats_idx; int /*<<< orphan*/  enabled_tc; int /*<<< orphan*/  uplink_seid; struct i40e_pf* pf; } ;
struct TYPE_9__ {int /*<<< orphan*/  asq_last_status; } ;
struct TYPE_10__ {TYPE_2__ aq; } ;
struct i40e_pf {int flags; TYPE_3__ hw; TYPE_1__* pdev; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int EPERM ; 
 int I40E_FLAG_VEB_STATS_ENABLED ; 
 int /*<<< orphan*/  I40E_VSI_FLAG_VEB_OWNER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int FUNC6 (struct i40e_veb*) ; 

__attribute__((used)) static int FUNC7(struct i40e_veb *veb, struct i40e_vsi *vsi)
{
	struct i40e_pf *pf = veb->pf;
	bool enable_stats = !!(pf->flags & I40E_FLAG_VEB_STATS_ENABLED);
	int ret;

	ret = FUNC1(&pf->hw, veb->uplink_seid, vsi->seid,
			      veb->enabled_tc, false,
			      &veb->seid, enable_stats, NULL);

	/* get a VEB from the hardware */
	if (ret) {
		FUNC0(&pf->pdev->dev,
			 "couldn't add VEB, err %s aq_err %s\n",
			 FUNC5(&pf->hw, ret),
			 FUNC4(&pf->hw, pf->hw.aq.asq_last_status));
		return -EPERM;
	}

	/* get statistics counter */
	ret = FUNC3(&pf->hw, veb->seid, NULL, NULL,
					 &veb->stats_idx, NULL, NULL, NULL);
	if (ret) {
		FUNC0(&pf->pdev->dev,
			 "couldn't get VEB statistics idx, err %s aq_err %s\n",
			 FUNC5(&pf->hw, ret),
			 FUNC4(&pf->hw, pf->hw.aq.asq_last_status));
		return -EPERM;
	}
	ret = FUNC6(veb);
	if (ret) {
		FUNC0(&pf->pdev->dev,
			 "couldn't get VEB bw info, err %s aq_err %s\n",
			 FUNC5(&pf->hw, ret),
			 FUNC4(&pf->hw, pf->hw.aq.asq_last_status));
		FUNC2(&pf->hw, veb->seid, NULL);
		return -ENOENT;
	}

	vsi->uplink_seid = veb->seid;
	vsi->veb_idx = veb->idx;
	vsi->flags |= I40E_VSI_FLAG_VEB_OWNER;

	return 0;
}
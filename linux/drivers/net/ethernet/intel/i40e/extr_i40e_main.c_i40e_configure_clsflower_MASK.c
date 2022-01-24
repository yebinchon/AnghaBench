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
struct i40e_vsi {struct i40e_pf* back; int /*<<< orphan*/  netdev; } ;
struct i40e_pf {int flags; int /*<<< orphan*/  num_cloud_filters; int /*<<< orphan*/  cloud_filter_list; int /*<<< orphan*/  hw; TYPE_1__* pdev; int /*<<< orphan*/  fdir_filter_list; scalar_t__ fdir_pf_active_filters; int /*<<< orphan*/  state; } ;
struct i40e_cloud_filter {int /*<<< orphan*/  cloud_node; scalar_t__ dst_port; int /*<<< orphan*/  cookie; } ;
struct flow_cls_offload {int /*<<< orphan*/  cookie; int /*<<< orphan*/  classid; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I40E_FLAG_FD_SB_ENABLED ; 
 int I40E_FLAG_FD_SB_TO_CLOUD_FILTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __I40E_RESET_INTR_RECEIVED ; 
 int /*<<< orphan*/  __I40E_RESET_RECOVERY_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct i40e_vsi*,struct i40e_cloud_filter*,int) ; 
 int FUNC5 (struct i40e_vsi*,struct i40e_cloud_filter*,int) ; 
 int FUNC6 (struct i40e_vsi*,int,struct i40e_cloud_filter*) ; 
 int FUNC7 (struct i40e_vsi*,struct flow_cls_offload*,struct i40e_cloud_filter*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct i40e_cloud_filter*) ; 
 struct i40e_cloud_filter* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct i40e_vsi *vsi,
				    struct flow_cls_offload *cls_flower)
{
	int tc = FUNC11(vsi->netdev, cls_flower->classid);
	struct i40e_cloud_filter *filter = NULL;
	struct i40e_pf *pf = vsi->back;
	int err = 0;

	if (tc < 0) {
		FUNC1(&vsi->back->pdev->dev, "Invalid traffic class\n");
		return -EOPNOTSUPP;
	}

	if (FUNC12(__I40E_RESET_RECOVERY_PENDING, pf->state) ||
	    FUNC12(__I40E_RESET_INTR_RECEIVED, pf->state))
		return -EBUSY;

	if (pf->fdir_pf_active_filters ||
	    (!FUNC3(&pf->fdir_filter_list))) {
		FUNC1(&vsi->back->pdev->dev,
			"Flow Director Sideband filters exists, turn ntuple off to configure cloud filters\n");
		return -EINVAL;
	}

	if (vsi->back->flags & I40E_FLAG_FD_SB_ENABLED) {
		FUNC1(&vsi->back->pdev->dev,
			"Disable Flow Director Sideband, configuring Cloud filters via tc-flower\n");
		vsi->back->flags &= ~I40E_FLAG_FD_SB_ENABLED;
		vsi->back->flags |= I40E_FLAG_FD_SB_TO_CLOUD_FILTER;
	}

	filter = FUNC10(sizeof(*filter), GFP_KERNEL);
	if (!filter)
		return -ENOMEM;

	filter->cookie = cls_flower->cookie;

	err = FUNC7(vsi, cls_flower, filter);
	if (err < 0)
		goto err;

	err = FUNC6(vsi, tc, filter);
	if (err < 0)
		goto err;

	/* Add cloud filter */
	if (filter->dst_port)
		err = FUNC5(vsi, filter, true);
	else
		err = FUNC4(vsi, filter, true);

	if (err) {
		FUNC1(&pf->pdev->dev,
			"Failed to add cloud filter, err %s\n",
			FUNC8(&pf->hw, err));
		goto err;
	}

	/* add filter to the ordered list */
	FUNC0(&filter->cloud_node);

	FUNC2(&filter->cloud_node, &pf->cloud_filter_list);

	pf->num_cloud_filters++;

	return err;
err:
	FUNC9(filter);
	return err;
}
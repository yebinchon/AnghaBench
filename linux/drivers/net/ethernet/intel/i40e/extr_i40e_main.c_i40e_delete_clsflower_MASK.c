#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct i40e_vsi {struct i40e_pf* back; } ;
struct TYPE_5__ {int /*<<< orphan*/  asq_last_status; } ;
struct TYPE_6__ {TYPE_2__ aq; } ;
struct i40e_pf {int flags; int /*<<< orphan*/  num_cloud_filters; TYPE_3__ hw; TYPE_1__* pdev; } ;
struct i40e_cloud_filter {scalar_t__ dst_port; int /*<<< orphan*/  cloud_node; } ;
struct flow_cls_offload {int /*<<< orphan*/  cookie; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int I40E_FLAG_FD_SB_ENABLED ; 
 int I40E_FLAG_FD_SB_INACTIVE ; 
 int I40E_FLAG_FD_SB_TO_CLOUD_FILTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct i40e_vsi*,struct i40e_cloud_filter*,int) ; 
 int FUNC3 (struct i40e_vsi*,struct i40e_cloud_filter*,int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct i40e_cloud_filter* FUNC5 (struct i40e_vsi*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct i40e_cloud_filter*) ; 

__attribute__((used)) static int FUNC8(struct i40e_vsi *vsi,
				 struct flow_cls_offload *cls_flower)
{
	struct i40e_cloud_filter *filter = NULL;
	struct i40e_pf *pf = vsi->back;
	int err = 0;

	filter = FUNC5(vsi, &cls_flower->cookie);

	if (!filter)
		return -EINVAL;

	FUNC1(&filter->cloud_node);

	if (filter->dst_port)
		err = FUNC3(vsi, filter, false);
	else
		err = FUNC2(vsi, filter, false);

	FUNC7(filter);
	if (err) {
		FUNC0(&pf->pdev->dev,
			"Failed to delete cloud filter, err %s\n",
			FUNC6(&pf->hw, err));
		return FUNC4(err, pf->hw.aq.asq_last_status);
	}

	pf->num_cloud_filters--;
	if (!pf->num_cloud_filters)
		if ((pf->flags & I40E_FLAG_FD_SB_TO_CLOUD_FILTER) &&
		    !(pf->flags & I40E_FLAG_FD_SB_INACTIVE)) {
			pf->flags |= I40E_FLAG_FD_SB_ENABLED;
			pf->flags &= ~I40E_FLAG_FD_SB_TO_CLOUD_FILTER;
			pf->flags &= ~I40E_FLAG_FD_SB_INACTIVE;
		}
	return 0;
}
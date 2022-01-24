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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_ft_underlay_qp {int /*<<< orphan*/  list; int /*<<< orphan*/  qpn; } ;
struct mlx5_flow_root_namespace {int /*<<< orphan*/  chain_lock; int /*<<< orphan*/  underlay_qpns; int /*<<< orphan*/  root_ft; TYPE_3__* cmds; } ;
struct TYPE_5__ {TYPE_1__* steering; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;
struct TYPE_6__ {int (* update_root_ft ) (struct mlx5_flow_root_namespace*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_4__ {struct mlx5_flow_root_namespace* root_ns; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_ft_underlay_qp*) ; 
 struct mlx5_ft_underlay_qp* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mlx5_flow_root_namespace*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct mlx5_core_dev *dev, u32 underlay_qpn)
{
	struct mlx5_flow_root_namespace *root = dev->priv.steering->root_ns;
	struct mlx5_ft_underlay_qp *new_uqp;
	int err = 0;

	new_uqp = FUNC1(sizeof(*new_uqp), GFP_KERNEL);
	if (!new_uqp)
		return -ENOMEM;

	FUNC4(&root->chain_lock);

	if (!root->root_ft) {
		err = -EINVAL;
		goto update_ft_fail;
	}

	err = root->cmds->update_root_ft(root, root->root_ft, underlay_qpn,
					 false);
	if (err) {
		FUNC3(dev, "Failed adding underlay QPN (%u) to root FT err(%d)\n",
			       underlay_qpn, err);
		goto update_ft_fail;
	}

	new_uqp->qpn = underlay_qpn;
	FUNC2(&new_uqp->list, &root->underlay_qpns);

	FUNC5(&root->chain_lock);

	return 0;

update_ft_fail:
	FUNC5(&root->chain_lock);
	FUNC0(new_uqp);
	return err;
}
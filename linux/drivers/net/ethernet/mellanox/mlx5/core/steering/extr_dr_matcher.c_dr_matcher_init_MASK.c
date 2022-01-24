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
struct mlx5dr_table {int /*<<< orphan*/  tx; int /*<<< orphan*/  rx; struct mlx5dr_domain* dmn; } ;
struct TYPE_2__ {int /*<<< orphan*/ * nic_tbl; } ;
struct mlx5dr_matcher {scalar_t__ match_criteria; TYPE_1__ tx; TYPE_1__ rx; int /*<<< orphan*/  mask; struct mlx5dr_table* tbl; } ;
struct mlx5dr_match_parameters {int match_sz; } ;
struct mlx5dr_match_param {int dummy; } ;
struct mlx5dr_domain {int type; } ;

/* Variables and functions */
 scalar_t__ DR_MATCHER_CRITERIA_MAX ; 
 int EINVAL ; 
#define  MLX5DR_DOMAIN_TYPE_FDB 130 
#define  MLX5DR_DOMAIN_TYPE_NIC_RX 129 
#define  MLX5DR_DOMAIN_TYPE_NIC_TX 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mlx5dr_matcher*) ; 
 int FUNC2 (struct mlx5dr_matcher*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5dr_domain*,char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,struct mlx5dr_match_parameters*) ; 

__attribute__((used)) static int FUNC5(struct mlx5dr_matcher *matcher,
			   struct mlx5dr_match_parameters *mask)
{
	struct mlx5dr_table *tbl = matcher->tbl;
	struct mlx5dr_domain *dmn = tbl->dmn;
	int ret;

	if (matcher->match_criteria >= DR_MATCHER_CRITERIA_MAX) {
		FUNC3(dmn, "Invalid match criteria attribute\n");
		return -EINVAL;
	}

	if (mask) {
		if (mask->match_sz > sizeof(struct mlx5dr_match_param)) {
			FUNC3(dmn, "Invalid match size attribute\n");
			return -EINVAL;
		}
		FUNC4(matcher->match_criteria,
				      &matcher->mask, mask);
	}

	switch (dmn->type) {
	case MLX5DR_DOMAIN_TYPE_NIC_RX:
		matcher->rx.nic_tbl = &tbl->rx;
		ret = FUNC2(matcher, &matcher->rx);
		break;
	case MLX5DR_DOMAIN_TYPE_NIC_TX:
		matcher->tx.nic_tbl = &tbl->tx;
		ret = FUNC2(matcher, &matcher->tx);
		break;
	case MLX5DR_DOMAIN_TYPE_FDB:
		matcher->rx.nic_tbl = &tbl->rx;
		matcher->tx.nic_tbl = &tbl->tx;
		ret = FUNC1(matcher);
		break;
	default:
		FUNC0(true);
		return -EINVAL;
	}

	return ret;
}
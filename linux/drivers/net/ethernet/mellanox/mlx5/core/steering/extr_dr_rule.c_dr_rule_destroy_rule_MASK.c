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
struct mlx5dr_rule {int /*<<< orphan*/  tx; int /*<<< orphan*/  rx; TYPE_2__* matcher; } ;
struct mlx5dr_domain {int type; } ;
struct TYPE_4__ {TYPE_1__* tbl; } ;
struct TYPE_3__ {struct mlx5dr_domain* dmn; } ;

/* Variables and functions */
 int EINVAL ; 
#define  MLX5DR_DOMAIN_TYPE_FDB 130 
#define  MLX5DR_DOMAIN_TYPE_NIC_RX 129 
#define  MLX5DR_DOMAIN_TYPE_NIC_TX 128 
 int /*<<< orphan*/  FUNC0 (struct mlx5dr_rule*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5dr_rule*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5dr_rule*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5dr_rule*) ; 

__attribute__((used)) static int FUNC4(struct mlx5dr_rule *rule)
{
	struct mlx5dr_domain *dmn = rule->matcher->tbl->dmn;

	switch (dmn->type) {
	case MLX5DR_DOMAIN_TYPE_NIC_RX:
		FUNC1(rule, &rule->rx);
		break;
	case MLX5DR_DOMAIN_TYPE_NIC_TX:
		FUNC1(rule, &rule->tx);
		break;
	case MLX5DR_DOMAIN_TYPE_FDB:
		FUNC0(rule);
		break;
	default:
		return -EINVAL;
	}

	FUNC2(rule);
	FUNC3(rule);
	return 0;
}
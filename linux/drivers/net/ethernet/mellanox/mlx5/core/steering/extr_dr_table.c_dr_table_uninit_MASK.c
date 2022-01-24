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
struct mlx5dr_table {TYPE_1__* dmn; int /*<<< orphan*/  tx; int /*<<< orphan*/  rx; } ;
struct TYPE_2__ {int type; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
#define  MLX5DR_DOMAIN_TYPE_FDB 130 
#define  MLX5DR_DOMAIN_TYPE_NIC_RX 129 
#define  MLX5DR_DOMAIN_TYPE_NIC_TX 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5dr_table*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mlx5dr_table *tbl)
{
	FUNC3(&tbl->dmn->mutex);

	switch (tbl->dmn->type) {
	case MLX5DR_DOMAIN_TYPE_NIC_RX:
		FUNC2(&tbl->rx);
		break;
	case MLX5DR_DOMAIN_TYPE_NIC_TX:
		FUNC2(&tbl->tx);
		break;
	case MLX5DR_DOMAIN_TYPE_FDB:
		FUNC1(tbl);
		break;
	default:
		FUNC0(true);
		break;
	}

	FUNC4(&tbl->dmn->mutex);
}
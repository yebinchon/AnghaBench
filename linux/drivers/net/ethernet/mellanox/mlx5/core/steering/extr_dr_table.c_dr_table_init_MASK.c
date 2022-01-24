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
struct TYPE_6__ {int /*<<< orphan*/ * nic_dmn; } ;
struct mlx5dr_table {TYPE_2__* dmn; TYPE_3__ tx; TYPE_3__ rx; int /*<<< orphan*/  table_type; int /*<<< orphan*/  matcher_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx; int /*<<< orphan*/  rx; } ;
struct TYPE_5__ {int type; int /*<<< orphan*/  mutex; TYPE_1__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  MLX5DR_DOMAIN_TYPE_FDB 130 
#define  MLX5DR_DOMAIN_TYPE_NIC_RX 129 
#define  MLX5DR_DOMAIN_TYPE_NIC_TX 128 
 int /*<<< orphan*/  MLX5_FLOW_TABLE_TYPE_FDB ; 
 int /*<<< orphan*/  MLX5_FLOW_TABLE_TYPE_NIC_RX ; 
 int /*<<< orphan*/  MLX5_FLOW_TABLE_TYPE_NIC_TX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct mlx5dr_table*) ; 
 int FUNC3 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mlx5dr_table *tbl)
{
	int ret = 0;

	FUNC0(&tbl->matcher_list);

	FUNC4(&tbl->dmn->mutex);

	switch (tbl->dmn->type) {
	case MLX5DR_DOMAIN_TYPE_NIC_RX:
		tbl->table_type = MLX5_FLOW_TABLE_TYPE_NIC_RX;
		tbl->rx.nic_dmn = &tbl->dmn->info.rx;
		ret = FUNC3(tbl->dmn, &tbl->rx);
		break;
	case MLX5DR_DOMAIN_TYPE_NIC_TX:
		tbl->table_type = MLX5_FLOW_TABLE_TYPE_NIC_TX;
		tbl->tx.nic_dmn = &tbl->dmn->info.tx;
		ret = FUNC3(tbl->dmn, &tbl->tx);
		break;
	case MLX5DR_DOMAIN_TYPE_FDB:
		tbl->table_type = MLX5_FLOW_TABLE_TYPE_FDB;
		tbl->rx.nic_dmn = &tbl->dmn->info.rx;
		tbl->tx.nic_dmn = &tbl->dmn->info.tx;
		ret = FUNC2(tbl);
		break;
	default:
		FUNC1(true);
		break;
	}

	FUNC5(&tbl->dmn->mutex);

	return ret;
}
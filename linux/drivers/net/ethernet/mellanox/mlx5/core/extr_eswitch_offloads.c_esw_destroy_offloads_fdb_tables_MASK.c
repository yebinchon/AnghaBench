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
struct TYPE_3__ {int /*<<< orphan*/  ns; int /*<<< orphan*/  slow_fdb; int /*<<< orphan*/  miss_grp; int /*<<< orphan*/  peer_miss_grp; int /*<<< orphan*/  send_to_vport_grp; int /*<<< orphan*/  miss_rule_uni; int /*<<< orphan*/  miss_rule_multi; } ;
struct TYPE_4__ {TYPE_1__ offloads; } ;
struct mlx5_eswitch {TYPE_2__ fdb_table; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_FLOW_STEERING_MODE_DMFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mlx5_eswitch *esw)
{
	if (!esw->fdb_table.offloads.slow_fdb)
		return;

	FUNC0(esw->dev, "Destroy offloads FDB Tables\n");
	FUNC2(esw->fdb_table.offloads.miss_rule_multi);
	FUNC2(esw->fdb_table.offloads.miss_rule_uni);
	FUNC3(esw->fdb_table.offloads.send_to_vport_grp);
	FUNC3(esw->fdb_table.offloads.peer_miss_grp);
	FUNC3(esw->fdb_table.offloads.miss_grp);

	FUNC4(esw->fdb_table.offloads.slow_fdb);
	FUNC1(esw);
	/* Holds true only as long as DMFS is the default */
	FUNC5(esw->fdb_table.offloads.ns,
				     MLX5_FLOW_STEERING_MODE_DMFS);
}
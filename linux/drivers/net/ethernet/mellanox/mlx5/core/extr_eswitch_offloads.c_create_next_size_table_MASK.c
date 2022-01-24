#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_namespace {int dummy; } ;
struct mlx5_eswitch {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSPC ; 
 struct mlx5_flow_table* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESW_OFFLOADS_NUM_GROUPS ; 
 scalar_t__ FUNC1 (struct mlx5_flow_table*) ; 
 scalar_t__ FUNC2 (struct mlx5_flow_table*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct mlx5_eswitch*) ; 
 struct mlx5_flow_table* FUNC5 (struct mlx5_flow_namespace*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_eswitch*,int) ; 

__attribute__((used)) static struct mlx5_flow_table *
FUNC7(struct mlx5_eswitch *esw,
		       struct mlx5_flow_namespace *ns,
		       u16 table_prio,
		       int level,
		       u32 flags)
{
	struct mlx5_flow_table *fdb;
	int sz;

	sz = FUNC4(esw);
	if (!sz)
		return FUNC0(-ENOSPC);

	fdb = FUNC5(ns,
						  table_prio,
						  sz,
						  ESW_OFFLOADS_NUM_GROUPS,
						  level,
						  flags);
	if (FUNC1(fdb)) {
		FUNC3(esw->dev, "Failed to create FDB Table err %d (table prio: %d, level: %d, size: %d)\n",
			 (int)FUNC2(fdb), table_prio, level, sz);
		FUNC6(esw, sz);
	}

	return fdb;
}
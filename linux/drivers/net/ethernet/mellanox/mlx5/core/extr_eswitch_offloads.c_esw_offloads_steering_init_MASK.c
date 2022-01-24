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
struct offloads_fdb {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  fdb_prio_lock; } ;
struct TYPE_4__ {TYPE_3__ offloads; } ;
struct TYPE_5__ {int num_vfs; } ;
struct mlx5_eswitch {int total_vports; TYPE_1__ fdb_table; int /*<<< orphan*/  dev; TYPE_2__ esw_funcs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_eswitch*) ; 
 int FUNC2 (struct mlx5_eswitch*,int) ; 
 int FUNC3 (struct mlx5_eswitch*,int) ; 
 int FUNC4 (struct mlx5_eswitch*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct mlx5_eswitch *esw)
{
	int num_vfs = esw->esw_funcs.num_vfs;
	int total_vports;
	int err;

	if (FUNC9(esw->dev))
		total_vports = esw->total_vports;
	else
		total_vports = num_vfs + FUNC0(esw->dev);

	FUNC8(&esw->fdb_table.offloads, 0, sizeof(struct offloads_fdb));
	FUNC10(&esw->fdb_table.offloads.fdb_prio_lock);

	err = FUNC1(esw);
	if (err)
		return err;

	err = FUNC2(esw, total_vports);
	if (err)
		goto create_fdb_err;

	err = FUNC3(esw, total_vports);
	if (err)
		goto create_ft_err;

	err = FUNC4(esw, total_vports);
	if (err)
		goto create_fg_err;

	return 0;

create_fg_err:
	FUNC7(esw);

create_ft_err:
	FUNC6(esw);

create_fdb_err:
	FUNC5(esw);

	return err;
}
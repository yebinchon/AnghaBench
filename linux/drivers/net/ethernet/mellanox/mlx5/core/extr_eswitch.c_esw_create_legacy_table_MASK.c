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
struct TYPE_2__ {int /*<<< orphan*/  legacy; } ;
struct mlx5_eswitch {TYPE_1__ fdb_table; } ;
struct legacy_fdb {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5_eswitch*) ; 
 int FUNC1 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_eswitch*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct mlx5_eswitch *esw)
{
	int err;

	FUNC3(&esw->fdb_table.legacy, 0, sizeof(struct legacy_fdb));

	err = FUNC1(esw);
	if (err)
		return err;

	err = FUNC0(esw);
	if (err)
		FUNC2(esw);

	return err;
}
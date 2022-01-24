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
struct mlxsw_sp_rif {int /*<<< orphan*/  fid; TYPE_1__* dev; int /*<<< orphan*/  mlxsw_sp; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mlxsw_sp_rif*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mlxsw_sp_rif*,int) ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sp_rif *rif)
{
	int err;

	err = FUNC3(rif, true);
	if (err)
		return err;

	err = FUNC2(rif->mlxsw_sp, rif->dev->dev_addr,
				  FUNC0(rif->fid), true);
	if (err)
		goto err_rif_fdb_op;

	FUNC1(rif->fid, rif);
	return 0;

err_rif_fdb_op:
	FUNC3(rif, false);
	return err;
}
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
struct mlxsw_sp_rif {TYPE_1__* dev; int /*<<< orphan*/  mlxsw_sp; struct mlxsw_sp_fid* fid; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp_fid*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_fid*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_rif*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_rif*,int) ; 

__attribute__((used)) static void FUNC5(struct mlxsw_sp_rif *rif)
{
	struct mlxsw_sp_fid *fid = rif->fid;

	FUNC1(fid, NULL);
	FUNC2(rif->mlxsw_sp, rif->dev->dev_addr,
			    FUNC0(fid), false);
	FUNC3(rif);
	FUNC4(rif, false);
}
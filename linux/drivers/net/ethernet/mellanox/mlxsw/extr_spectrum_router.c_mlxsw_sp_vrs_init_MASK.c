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
typedef  int u64 ;
struct mlxsw_sp_vr {int id; } ;
struct mlxsw_sp {TYPE_1__* router; int /*<<< orphan*/  core; } ;
struct TYPE_2__ {struct mlxsw_sp_vr* vrs; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_VRS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_vr* FUNC2 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mlxsw_sp *mlxsw_sp)
{
	struct mlxsw_sp_vr *vr;
	u64 max_vrs;
	int i;

	if (!FUNC1(mlxsw_sp->core, MAX_VRS))
		return -EIO;

	max_vrs = FUNC0(mlxsw_sp->core, MAX_VRS);
	mlxsw_sp->router->vrs = FUNC2(max_vrs, sizeof(struct mlxsw_sp_vr),
					GFP_KERNEL);
	if (!mlxsw_sp->router->vrs)
		return -ENOMEM;

	for (i = 0; i < max_vrs; i++) {
		vr = &mlxsw_sp->router->vrs[i];
		vr->id = i;
	}

	return 0;
}
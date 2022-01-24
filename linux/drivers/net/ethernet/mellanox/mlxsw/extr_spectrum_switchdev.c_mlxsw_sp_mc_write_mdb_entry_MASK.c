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
typedef  scalar_t__ u16 ;
struct mlxsw_sp_mid {int in_hw; int /*<<< orphan*/  fid; int /*<<< orphan*/  addr; scalar_t__ mid; int /*<<< orphan*/  ports_in_mid; } ;
struct mlxsw_sp_bridge_device {int /*<<< orphan*/  mrouter; } ;
struct mlxsw_sp {TYPE_1__* bridge; int /*<<< orphan*/  core; } ;
struct TYPE_2__ {int /*<<< orphan*/  mids_bitmap; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MLXSW_SP_MID_MAX ; 
 int /*<<< orphan*/  FUNC1 (long*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (long*) ; 
 long* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (long*,struct mlxsw_sp_bridge_device*,struct mlxsw_sp*) ; 
 int FUNC7 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC8 (struct mlxsw_sp*,scalar_t__,long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC10(struct mlxsw_sp *mlxsw_sp,
			    struct mlxsw_sp_mid *mid,
			    struct mlxsw_sp_bridge_device *bridge_device)
{
	long *flood_bitmap;
	int num_of_ports;
	int alloc_size;
	u16 mid_idx;
	int err;

	mid_idx = FUNC2(mlxsw_sp->bridge->mids_bitmap,
				      MLXSW_SP_MID_MAX);
	if (mid_idx == MLXSW_SP_MID_MAX)
		return false;

	num_of_ports = FUNC5(mlxsw_sp->core);
	alloc_size = sizeof(long) * FUNC0(num_of_ports);
	flood_bitmap = FUNC4(alloc_size, GFP_KERNEL);
	if (!flood_bitmap)
		return false;

	FUNC1(flood_bitmap,  mid->ports_in_mid, num_of_ports);
	FUNC6(flood_bitmap, bridge_device, mlxsw_sp);

	mid->mid = mid_idx;
	err = FUNC8(mlxsw_sp, mid_idx, flood_bitmap,
					    bridge_device->mrouter);
	FUNC3(flood_bitmap);
	if (err)
		return false;

	err = FUNC7(mlxsw_sp, mid->addr, mid->fid, mid_idx,
				   true);
	if (err)
		return false;

	FUNC9(mid_idx, mlxsw_sp->bridge->mids_bitmap);
	mid->in_hw = true;
	return true;
}
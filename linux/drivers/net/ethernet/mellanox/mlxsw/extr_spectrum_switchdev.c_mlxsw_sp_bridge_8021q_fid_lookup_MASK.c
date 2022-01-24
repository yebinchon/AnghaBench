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
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp_bridge_device {int /*<<< orphan*/  dev; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 struct mlxsw_sp_fid* FUNC0 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mlxsw_sp_fid *
FUNC2(struct mlxsw_sp_bridge_device *bridge_device,
				 u16 vid)
{
	struct mlxsw_sp *mlxsw_sp = FUNC1(bridge_device->dev);

	return FUNC0(mlxsw_sp, vid);
}
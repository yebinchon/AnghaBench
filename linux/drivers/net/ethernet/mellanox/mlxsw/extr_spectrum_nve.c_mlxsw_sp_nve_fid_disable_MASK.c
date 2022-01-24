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
struct net_device {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp_fid*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_fid*) ; 
 scalar_t__ FUNC5 (struct mlxsw_sp_fid*,int*) ; 
 scalar_t__ FUNC6 (struct mlxsw_sp_fid*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mlxsw_sp_fid*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxsw_sp*,struct mlxsw_sp_fid*,struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mlxsw_sp*,struct mlxsw_sp_fid*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlxsw_sp*) ; 

void FUNC12(struct mlxsw_sp *mlxsw_sp,
			      struct mlxsw_sp_fid *fid)
{
	u16 fid_index = FUNC4(fid);
	struct net_device *nve_dev;
	int nve_ifindex;
	__be32 vni;

	FUNC10(mlxsw_sp, fid);
	FUNC9(mlxsw_sp, fid_index);

	if (FUNC0(FUNC5(fid, &nve_ifindex) ||
		    FUNC6(fid, &vni)))
		goto out;

	nve_dev = FUNC1(&init_net, nve_ifindex);
	if (!nve_dev)
		goto out;

	FUNC8(mlxsw_sp, fid, nve_dev, vni);
	FUNC3(fid, nve_dev);

	FUNC2(nve_dev);

out:
	FUNC7(fid);
	FUNC11(mlxsw_sp);
}
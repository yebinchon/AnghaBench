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
struct net_device {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef  enum mlxsw_sp_rif_type { ____Placeholder_mlxsw_sp_rif_type } mlxsw_sp_rif_type ;
typedef  enum mlxsw_sp_fid_type { ____Placeholder_mlxsw_sp_fid_type } mlxsw_sp_fid_type ;

/* Variables and functions */
 int MLXSW_SP_FID_TYPE_8021D ; 
 int MLXSW_SP_FID_TYPE_8021Q ; 
 int MLXSW_SP_FID_TYPE_RFID ; 
 int MLXSW_SP_RIF_TYPE_IPIP_LB ; 
 scalar_t__ FUNC0 (struct net_device const*) ; 
 scalar_t__ FUNC1 (struct net_device const*) ; 
 int FUNC2 (struct mlxsw_sp const*,int) ; 
 scalar_t__ FUNC3 (struct mlxsw_sp const*,struct net_device const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct net_device const*) ; 
 struct net_device const* FUNC5 (struct net_device const*) ; 

__attribute__((used)) static enum mlxsw_sp_rif_type
FUNC6(const struct mlxsw_sp *mlxsw_sp,
		      const struct net_device *dev)
{
	enum mlxsw_sp_fid_type type;

	if (FUNC3(mlxsw_sp, dev, NULL))
		return MLXSW_SP_RIF_TYPE_IPIP_LB;

	/* Otherwise RIF type is derived from the type of the underlying FID. */
	if (FUNC1(dev) && FUNC4(FUNC5(dev)))
		type = MLXSW_SP_FID_TYPE_8021Q;
	else if (FUNC4(dev) && FUNC0(dev))
		type = MLXSW_SP_FID_TYPE_8021Q;
	else if (FUNC4(dev))
		type = MLXSW_SP_FID_TYPE_8021D;
	else
		type = MLXSW_SP_FID_TYPE_RFID;

	return FUNC2(mlxsw_sp, type);
}
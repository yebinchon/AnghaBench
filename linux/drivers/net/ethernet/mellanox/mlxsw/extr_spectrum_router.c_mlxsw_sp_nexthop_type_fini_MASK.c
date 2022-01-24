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
struct mlxsw_sp_nexthop {int type; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
#define  MLXSW_SP_NEXTHOP_TYPE_ETH 129 
#define  MLXSW_SP_NEXTHOP_TYPE_IPIP 128 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp_nexthop*) ; 

__attribute__((used)) static void FUNC3(struct mlxsw_sp *mlxsw_sp,
				       struct mlxsw_sp_nexthop *nh)
{
	switch (nh->type) {
	case MLXSW_SP_NEXTHOP_TYPE_ETH:
		FUNC1(mlxsw_sp, nh);
		FUNC2(nh);
		break;
	case MLXSW_SP_NEXTHOP_TYPE_IPIP:
		FUNC2(nh);
		FUNC0(mlxsw_sp, nh);
		break;
	}
}
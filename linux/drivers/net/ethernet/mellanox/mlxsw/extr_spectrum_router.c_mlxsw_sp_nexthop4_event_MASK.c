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
struct mlxsw_sp_nexthop_key {struct fib_nh* fib_nh; } ;
struct mlxsw_sp_nexthop {int /*<<< orphan*/  nh_grp; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct fib_nh {int dummy; } ;
struct TYPE_2__ {scalar_t__ aborted; } ;

/* Variables and functions */
#define  FIB_EVENT_NH_ADD 129 
#define  FIB_EVENT_NH_DEL 128 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_nexthop*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_nexthop*,struct fib_nh*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ ) ; 
 struct mlxsw_sp_nexthop* FUNC4 (struct mlxsw_sp*,struct mlxsw_sp_nexthop_key) ; 

__attribute__((used)) static void FUNC5(struct mlxsw_sp *mlxsw_sp,
				    unsigned long event, struct fib_nh *fib_nh)
{
	struct mlxsw_sp_nexthop_key key;
	struct mlxsw_sp_nexthop *nh;

	if (mlxsw_sp->router->aborted)
		return;

	key.fib_nh = fib_nh;
	nh = FUNC4(mlxsw_sp, key);
	if (FUNC0(!nh))
		return;

	switch (event) {
	case FIB_EVENT_NH_ADD:
		FUNC2(mlxsw_sp, nh, fib_nh);
		break;
	case FIB_EVENT_NH_DEL:
		FUNC1(mlxsw_sp, nh);
		break;
	}

	FUNC3(mlxsw_sp, nh->nh_grp);
}
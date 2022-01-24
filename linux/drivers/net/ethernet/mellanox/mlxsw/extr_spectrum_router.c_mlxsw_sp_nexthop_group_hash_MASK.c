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
typedef  int /*<<< orphan*/  u32 ;
struct mlxsw_sp_nexthop_group_cmp_arg {int proto; int /*<<< orphan*/  fib6_entry; int /*<<< orphan*/  fi; } ;

/* Variables and functions */
#define  MLXSW_SP_L3_PROTO_IPV4 129 
#define  MLXSW_SP_L3_PROTO_IPV6 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32
FUNC3(const void *data, u32 len, u32 seed)
{
	const struct mlxsw_sp_nexthop_group_cmp_arg *cmp_arg = data;

	switch (cmp_arg->proto) {
	case MLXSW_SP_L3_PROTO_IPV4:
		return FUNC1(&cmp_arg->fi, sizeof(cmp_arg->fi), seed);
	case MLXSW_SP_L3_PROTO_IPV6:
		return FUNC2(cmp_arg->fib6_entry, seed);
	default:
		FUNC0(1);
		return 0;
	}
}
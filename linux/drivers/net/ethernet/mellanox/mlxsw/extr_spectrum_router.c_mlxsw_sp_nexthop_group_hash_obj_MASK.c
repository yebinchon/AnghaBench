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
typedef  int /*<<< orphan*/  val ;
typedef  unsigned int u32 ;
struct mlxsw_sp_nexthop_group {unsigned int count; struct mlxsw_sp_nexthop* nexthops; } ;
struct mlxsw_sp_nexthop {unsigned int ifindex; } ;
struct fib_info {int dummy; } ;
typedef  int /*<<< orphan*/  fi ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (unsigned int*,int,unsigned int) ; 
 struct fib_info* FUNC2 (struct mlxsw_sp_nexthop_group const*) ; 
 int FUNC3 (struct mlxsw_sp_nexthop_group const*) ; 

__attribute__((used)) static u32 FUNC4(const void *data, u32 len, u32 seed)
{
	const struct mlxsw_sp_nexthop_group *nh_grp = data;
	const struct mlxsw_sp_nexthop *nh;
	struct fib_info *fi;
	unsigned int val;
	int i;

	switch (FUNC3(nh_grp)) {
	case AF_INET:
		fi = FUNC2(nh_grp);
		return FUNC1(&fi, sizeof(fi), seed);
	case AF_INET6:
		val = nh_grp->count;
		for (i = 0; i < nh_grp->count; i++) {
			nh = &nh_grp->nexthops[i];
			val ^= FUNC1(&nh->ifindex, sizeof(nh->ifindex), seed);
		}
		return FUNC1(&val, sizeof(val), seed);
	default:
		FUNC0(1);
		return 0;
	}
}
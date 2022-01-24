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
struct parman_item {int /*<<< orphan*/  index; } ;
struct mlxsw_sp_mr_route_key {int proto; int /*<<< orphan*/  vrid; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 struct in6_addr IN6ADDR_ANY_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RMFT2_LEN ; 
#define  MLXSW_SP_L3_PROTO_IPV4 129 
#define  MLXSW_SP_L3_PROTO_IPV6 128 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct in6_addr,struct in6_addr,struct in6_addr,struct in6_addr,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rmft2 ; 

__attribute__((used)) static int FUNC4(struct mlxsw_sp *mlxsw_sp,
					  struct parman_item *parman_item,
					  struct mlxsw_sp_mr_route_key *key)
{
	struct in6_addr zero_addr = IN6ADDR_ANY_INIT;
	char rmft2_pl[MLXSW_REG_RMFT2_LEN];

	switch (key->proto) {
	case MLXSW_SP_L3_PROTO_IPV4:
		FUNC1(rmft2_pl, false, parman_item->index,
					  key->vrid, 0, 0, 0, 0, 0, 0, NULL);
		break;
	case MLXSW_SP_L3_PROTO_IPV6:
		FUNC2(rmft2_pl, false, parman_item->index,
					  key->vrid, 0, 0, zero_addr, zero_addr,
					  zero_addr, zero_addr, NULL);
		break;
	}

	return FUNC3(mlxsw_sp->core, FUNC0(rmft2), rmft2_pl);
}
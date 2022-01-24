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
struct mlxsw_sp_mr_route_key {int vrid; int proto; } ;
struct mlxsw_sp_acl_rule_info {unsigned int priority; } ;
struct mlxsw_sp_acl_rule {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_AFK_ELEMENT_VIRT_ROUTER_0_7 ; 
 int /*<<< orphan*/  MLXSW_AFK_ELEMENT_VIRT_ROUTER_8_10 ; 
#define  MLXSW_SP_L3_PROTO_IPV4 129 
#define  MLXSW_SP_L3_PROTO_IPV6 128 
 void FUNC1 (struct mlxsw_sp_acl_rule_info*,struct mlxsw_sp_mr_route_key*) ; 
 void FUNC2 (struct mlxsw_sp_acl_rule_info*,struct mlxsw_sp_mr_route_key*) ; 
 struct mlxsw_sp_acl_rule_info* FUNC3 (struct mlxsw_sp_acl_rule*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlxsw_sp_acl_rule_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mlxsw_sp_acl_rule *rule,
			     struct mlxsw_sp_mr_route_key *key,
			     unsigned int priority)
{
	struct mlxsw_sp_acl_rule_info *rulei;

	rulei = FUNC3(rule);
	rulei->priority = priority;
	FUNC4(rulei, MLXSW_AFK_ELEMENT_VIRT_ROUTER_0_7,
				       key->vrid, FUNC0(7, 0));
	FUNC4(rulei,
				       MLXSW_AFK_ELEMENT_VIRT_ROUTER_8_10,
				       key->vrid >> 8, FUNC0(2, 0));
	switch (key->proto) {
	case MLXSW_SP_L3_PROTO_IPV4:
		return FUNC1(rulei, key);
	case MLXSW_SP_L3_PROTO_IPV6:
		return FUNC2(rulei, key);
	}
}
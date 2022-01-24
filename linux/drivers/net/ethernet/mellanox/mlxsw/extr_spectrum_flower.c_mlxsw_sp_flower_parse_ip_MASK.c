#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct mlxsw_sp_acl_rule_info {int dummy; } ;
struct mlxsw_sp {TYPE_2__* bus_info; } ;
struct flow_rule {int dummy; } ;
struct flow_match_ip {TYPE_4__* mask; TYPE_3__* key; } ;
struct TYPE_5__ {int /*<<< orphan*/  extack; } ;
struct flow_cls_offload {TYPE_1__ common; } ;
struct TYPE_8__ {int ttl; int tos; } ;
struct TYPE_7__ {int ttl; int tos; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ ETH_P_IP ; 
 scalar_t__ ETH_P_IPV6 ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_IP ; 
 int /*<<< orphan*/  MLXSW_AFK_ELEMENT_IP_DSCP ; 
 int /*<<< orphan*/  MLXSW_AFK_ELEMENT_IP_ECN ; 
 int /*<<< orphan*/  MLXSW_AFK_ELEMENT_IP_TTL_ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct flow_rule* FUNC2 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC3 (struct flow_rule const*,struct flow_match_ip*) ; 
 int /*<<< orphan*/  FUNC4 (struct flow_rule const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_acl_rule_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC6(struct mlxsw_sp *mlxsw_sp,
				    struct mlxsw_sp_acl_rule_info *rulei,
				    struct flow_cls_offload *f,
				    u16 n_proto)
{
	const struct flow_rule *rule = FUNC2(f);
	struct flow_match_ip match;

	if (!FUNC4(rule, FLOW_DISSECTOR_KEY_IP))
		return 0;

	if (n_proto != ETH_P_IP && n_proto != ETH_P_IPV6) {
		FUNC0(f->common.extack, "IP keys supported only for IPv4/6");
		FUNC1(mlxsw_sp->bus_info->dev, "IP keys supported only for IPv4/6\n");
		return -EINVAL;
	}

	FUNC3(rule, &match);

	FUNC5(rulei, MLXSW_AFK_ELEMENT_IP_TTL_,
				       match.key->ttl, match.mask->ttl);

	FUNC5(rulei, MLXSW_AFK_ELEMENT_IP_ECN,
				       match.key->tos & 0x3,
				       match.mask->tos & 0x3);

	FUNC5(rulei, MLXSW_AFK_ELEMENT_IP_DSCP,
				       match.key->tos >> 2,
				       match.mask->tos >> 2);

	return 0;
}
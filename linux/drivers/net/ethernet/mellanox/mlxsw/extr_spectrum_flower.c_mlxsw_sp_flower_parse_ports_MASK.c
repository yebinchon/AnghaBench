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
typedef  scalar_t__ u8 ;
struct mlxsw_sp_acl_rule_info {int dummy; } ;
struct mlxsw_sp {TYPE_2__* bus_info; } ;
struct flow_rule {int dummy; } ;
struct flow_match_ports {TYPE_4__* mask; TYPE_3__* key; } ;
struct TYPE_5__ {int /*<<< orphan*/  extack; } ;
struct flow_cls_offload {TYPE_1__ common; } ;
struct TYPE_8__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_7__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_PORTS ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  MLXSW_AFK_ELEMENT_DST_L4_PORT ; 
 int /*<<< orphan*/  MLXSW_AFK_ELEMENT_SRC_L4_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct flow_rule* FUNC2 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC3 (struct flow_rule const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct flow_rule const*,struct flow_match_ports*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_acl_rule_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct mlxsw_sp *mlxsw_sp,
				       struct mlxsw_sp_acl_rule_info *rulei,
				       struct flow_cls_offload *f,
				       u8 ip_proto)
{
	const struct flow_rule *rule = FUNC2(f);
	struct flow_match_ports match;

	if (!FUNC3(rule, FLOW_DISSECTOR_KEY_PORTS))
		return 0;

	if (ip_proto != IPPROTO_TCP && ip_proto != IPPROTO_UDP) {
		FUNC0(f->common.extack, "Only UDP and TCP keys are supported");
		FUNC1(mlxsw_sp->bus_info->dev, "Only UDP and TCP keys are supported\n");
		return -EINVAL;
	}

	FUNC4(rule, &match);
	FUNC5(rulei, MLXSW_AFK_ELEMENT_DST_L4_PORT,
				       FUNC6(match.key->dst),
				       FUNC6(match.mask->dst));
	FUNC5(rulei, MLXSW_AFK_ELEMENT_SRC_L4_PORT,
				       FUNC6(match.key->src),
				       FUNC6(match.mask->src));
	return 0;
}
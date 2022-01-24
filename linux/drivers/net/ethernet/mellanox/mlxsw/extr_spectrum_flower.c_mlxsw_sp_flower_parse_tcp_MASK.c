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
struct flow_match_tcp {TYPE_4__* mask; TYPE_3__* key; } ;
struct TYPE_5__ {int /*<<< orphan*/  extack; } ;
struct flow_cls_offload {TYPE_1__ common; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_TCP ; 
 scalar_t__ IPPROTO_TCP ; 
 int /*<<< orphan*/  MLXSW_AFK_ELEMENT_TCP_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct flow_rule* FUNC2 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC3 (struct flow_rule const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct flow_rule const*,struct flow_match_tcp*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxsw_sp_acl_rule_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct mlxsw_sp *mlxsw_sp,
				     struct mlxsw_sp_acl_rule_info *rulei,
				     struct flow_cls_offload *f,
				     u8 ip_proto)
{
	const struct flow_rule *rule = FUNC2(f);
	struct flow_match_tcp match;

	if (!FUNC3(rule, FLOW_DISSECTOR_KEY_TCP))
		return 0;

	if (ip_proto != IPPROTO_TCP) {
		FUNC0(f->common.extack, "TCP keys supported only for TCP");
		FUNC1(mlxsw_sp->bus_info->dev, "TCP keys supported only for TCP\n");
		return -EINVAL;
	}

	FUNC4(rule, &match);

	if (match.mask->flags & FUNC5(0x0E00)) {
		FUNC0(f->common.extack, "TCP flags match not supported on reserved bits");
		FUNC1(mlxsw_sp->bus_info->dev, "TCP flags match not supported on reserved bits\n");
		return -EINVAL;
	}

	FUNC6(rulei, MLXSW_AFK_ELEMENT_TCP_FLAGS,
				       FUNC7(match.key->flags),
				       FUNC7(match.mask->flags));
	return 0;
}
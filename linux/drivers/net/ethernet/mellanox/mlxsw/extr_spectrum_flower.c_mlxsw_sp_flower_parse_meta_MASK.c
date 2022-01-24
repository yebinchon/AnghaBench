#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct mlxsw_sp_port {scalar_t__ mlxsw_sp; int /*<<< orphan*/  local_port; } ;
struct mlxsw_sp_acl_rule_info {int dummy; } ;
struct mlxsw_sp_acl_block {scalar_t__ mlxsw_sp; int /*<<< orphan*/  net; } ;
struct flow_rule {int dummy; } ;
struct flow_match_meta {TYPE_2__* key; TYPE_1__* mask; } ;
struct TYPE_6__ {int /*<<< orphan*/  extack; } ;
struct flow_cls_offload {TYPE_3__ common; } ;
struct TYPE_5__ {int /*<<< orphan*/  ingress_ifindex; } ;
struct TYPE_4__ {int ingress_ifindex; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_META ; 
 int /*<<< orphan*/  MLXSW_AFK_ELEMENT_SRC_SYS_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct net_device* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct flow_rule* FUNC2 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC3 (struct flow_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct flow_rule*,struct flow_match_meta*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_sp_acl_rule_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct mlxsw_sp_port* FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct mlxsw_sp_acl_rule_info *rulei,
				      struct flow_cls_offload *f,
				      struct mlxsw_sp_acl_block *block)
{
	struct flow_rule *rule = FUNC2(f);
	struct mlxsw_sp_port *mlxsw_sp_port;
	struct net_device *ingress_dev;
	struct flow_match_meta match;

	if (!FUNC3(rule, FLOW_DISSECTOR_KEY_META))
		return 0;

	FUNC4(rule, &match);
	if (match.mask->ingress_ifindex != 0xFFFFFFFF) {
		FUNC0(f->common.extack, "Unsupported ingress ifindex mask");
		return -EINVAL;
	}

	ingress_dev = FUNC1(block->net,
					 match.key->ingress_ifindex);
	if (!ingress_dev) {
		FUNC0(f->common.extack, "Can't find specified ingress port to match on");
		return -EINVAL;
	}

	if (!FUNC6(ingress_dev)) {
		FUNC0(f->common.extack, "Can't match on non-mlxsw ingress port");
		return -EINVAL;
	}

	mlxsw_sp_port = FUNC7(ingress_dev);
	if (mlxsw_sp_port->mlxsw_sp != block->mlxsw_sp) {
		FUNC0(f->common.extack, "Can't match on a port from different device");
		return -EINVAL;
	}

	FUNC5(rulei,
				       MLXSW_AFK_ELEMENT_SRC_SYS_PORT,
				       mlxsw_sp_port->local_port,
				       0xFFFFFFFF);
	return 0;
}
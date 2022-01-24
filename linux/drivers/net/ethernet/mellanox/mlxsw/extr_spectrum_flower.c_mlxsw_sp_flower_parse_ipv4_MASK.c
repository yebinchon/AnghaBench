#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlxsw_sp_acl_rule_info {int dummy; } ;
struct flow_match_ipv4_addrs {TYPE_2__* mask; TYPE_1__* key; } ;
struct flow_cls_offload {int /*<<< orphan*/  rule; } ;
struct TYPE_4__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_3__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_AFK_ELEMENT_DST_IP_0_31 ; 
 int /*<<< orphan*/  MLXSW_AFK_ELEMENT_SRC_IP_0_31 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct flow_match_ipv4_addrs*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp_acl_rule_info*,int /*<<< orphan*/ ,char*,char*,int) ; 

__attribute__((used)) static void FUNC2(struct mlxsw_sp_acl_rule_info *rulei,
				       struct flow_cls_offload *f)
{
	struct flow_match_ipv4_addrs match;

	FUNC0(f->rule, &match);

	FUNC1(rulei, MLXSW_AFK_ELEMENT_SRC_IP_0_31,
				       (char *) &match.key->src,
				       (char *) &match.mask->src, 4);
	FUNC1(rulei, MLXSW_AFK_ELEMENT_DST_IP_0_31,
				       (char *) &match.key->dst,
				       (char *) &match.mask->dst, 4);
}
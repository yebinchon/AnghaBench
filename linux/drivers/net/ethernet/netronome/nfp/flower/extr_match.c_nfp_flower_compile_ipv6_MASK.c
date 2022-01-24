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
struct nfp_flower_ipv6 {int /*<<< orphan*/  ip_ext; int /*<<< orphan*/  ipv6_dst; int /*<<< orphan*/  ipv6_src; } ;
struct flow_rule {int dummy; } ;
struct flow_match_ipv6_addrs {TYPE_2__* mask; TYPE_1__* key; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_3__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_IPV6_ADDRS ; 
 struct flow_rule* FUNC0 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC1 (struct flow_rule*,struct flow_match_ipv6_addrs*) ; 
 scalar_t__ FUNC2 (struct flow_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp_flower_ipv6*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct flow_cls_offload*) ; 

__attribute__((used)) static void
FUNC5(struct nfp_flower_ipv6 *ext,
			struct nfp_flower_ipv6 *msk,
			struct flow_cls_offload *flow)
{
	struct flow_rule *rule = FUNC0(flow);

	FUNC3(ext, 0, sizeof(struct nfp_flower_ipv6));
	FUNC3(msk, 0, sizeof(struct nfp_flower_ipv6));

	if (FUNC2(rule, FLOW_DISSECTOR_KEY_IPV6_ADDRS)) {
		struct flow_match_ipv6_addrs match;

		FUNC1(rule, &match);
		ext->ipv6_src = match.key->src;
		ext->ipv6_dst = match.key->dst;
		msk->ipv6_src = match.mask->src;
		msk->ipv6_dst = match.mask->dst;
	}

	FUNC4(&ext->ip_ext, &msk->ip_ext, flow);
}
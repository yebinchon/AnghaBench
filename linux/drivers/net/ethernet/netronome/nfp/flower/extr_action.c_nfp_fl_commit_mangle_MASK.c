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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_5__ {scalar_t__ len_lw; } ;
struct TYPE_6__ {TYPE_2__ head; } ;
struct nfp_flower_pedit_acts {TYPE_3__ set_tport; TYPE_3__ set_ip6_src; TYPE_3__ set_ip6_dst; TYPE_3__ set_ip6_tc_hl_fl; TYPE_3__ set_ip_addr; TYPE_3__ set_ip_ttl_tos; TYPE_3__ set_eth; } ;
struct flow_rule {int dummy; } ;
struct flow_match_basic {TYPE_1__* key; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ip_proto; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_BASIC ; 
 int TCA_CSUM_UPDATE_FLAG_IPV4HDR ; 
 struct flow_rule* FUNC0 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC1 (struct flow_rule*,struct flow_match_basic*) ; 
 scalar_t__ FUNC2 (struct flow_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_3__*,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct flow_cls_offload *flow, char *nfp_action,
		     int *a_len, struct nfp_flower_pedit_acts *set_act,
		     u32 *csum_updated)
{
	struct flow_rule *rule = FUNC0(flow);
	size_t act_size = 0;
	u8 ip_proto = 0;

	if (FUNC2(rule, FLOW_DISSECTOR_KEY_BASIC)) {
		struct flow_match_basic match;

		FUNC1(rule, &match);
		ip_proto = match.key->ip_proto;
	}

	if (set_act->set_eth.head.len_lw) {
		act_size = sizeof(set_act->set_eth);
		FUNC3(nfp_action, &set_act->set_eth, act_size);
		*a_len += act_size;
	}

	if (set_act->set_ip_ttl_tos.head.len_lw) {
		nfp_action += act_size;
		act_size = sizeof(set_act->set_ip_ttl_tos);
		FUNC3(nfp_action, &set_act->set_ip_ttl_tos, act_size);
		*a_len += act_size;

		/* Hardware will automatically fix IPv4 and TCP/UDP checksum. */
		*csum_updated |= TCA_CSUM_UPDATE_FLAG_IPV4HDR |
				FUNC4(ip_proto);
	}

	if (set_act->set_ip_addr.head.len_lw) {
		nfp_action += act_size;
		act_size = sizeof(set_act->set_ip_addr);
		FUNC3(nfp_action, &set_act->set_ip_addr, act_size);
		*a_len += act_size;

		/* Hardware will automatically fix IPv4 and TCP/UDP checksum. */
		*csum_updated |= TCA_CSUM_UPDATE_FLAG_IPV4HDR |
				FUNC4(ip_proto);
	}

	if (set_act->set_ip6_tc_hl_fl.head.len_lw) {
		nfp_action += act_size;
		act_size = sizeof(set_act->set_ip6_tc_hl_fl);
		FUNC3(nfp_action, &set_act->set_ip6_tc_hl_fl, act_size);
		*a_len += act_size;

		/* Hardware will automatically fix TCP/UDP checksum. */
		*csum_updated |= FUNC4(ip_proto);
	}

	if (set_act->set_ip6_dst.head.len_lw &&
	    set_act->set_ip6_src.head.len_lw) {
		/* TC compiles set src and dst IPv6 address as a single action,
		 * the hardware requires this to be 2 separate actions.
		 */
		nfp_action += act_size;
		act_size = sizeof(set_act->set_ip6_src);
		FUNC3(nfp_action, &set_act->set_ip6_src, act_size);
		*a_len += act_size;

		act_size = sizeof(set_act->set_ip6_dst);
		FUNC3(&nfp_action[sizeof(set_act->set_ip6_src)],
		       &set_act->set_ip6_dst, act_size);
		*a_len += act_size;

		/* Hardware will automatically fix TCP/UDP checksum. */
		*csum_updated |= FUNC4(ip_proto);
	} else if (set_act->set_ip6_dst.head.len_lw) {
		nfp_action += act_size;
		act_size = sizeof(set_act->set_ip6_dst);
		FUNC3(nfp_action, &set_act->set_ip6_dst, act_size);
		*a_len += act_size;

		/* Hardware will automatically fix TCP/UDP checksum. */
		*csum_updated |= FUNC4(ip_proto);
	} else if (set_act->set_ip6_src.head.len_lw) {
		nfp_action += act_size;
		act_size = sizeof(set_act->set_ip6_src);
		FUNC3(nfp_action, &set_act->set_ip6_src, act_size);
		*a_len += act_size;

		/* Hardware will automatically fix TCP/UDP checksum. */
		*csum_updated |= FUNC4(ip_proto);
	}
	if (set_act->set_tport.head.len_lw) {
		nfp_action += act_size;
		act_size = sizeof(set_act->set_tport);
		FUNC3(nfp_action, &set_act->set_tport, act_size);
		*a_len += act_size;

		/* Hardware will automatically fix TCP/UDP checksum. */
		*csum_updated |= FUNC4(ip_proto);
	}

	return 0;
}
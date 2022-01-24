#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct netlink_ext_ack {int dummy; } ;
struct TYPE_17__ {int /*<<< orphan*/  vlan_tci; int /*<<< orphan*/  match_flags; int /*<<< orphan*/  etype; int /*<<< orphan*/  src_addr; int /*<<< orphan*/  dst_addr; } ;
struct igb_nfc_filter {int action; int /*<<< orphan*/  cookie; TYPE_8__ filter; } ;
struct igb_adapter {int dummy; } ;
struct TYPE_10__ {struct flow_dissector* dissector; } ;
struct flow_rule {TYPE_1__ match; } ;
struct flow_match_vlan {TYPE_9__* key; TYPE_7__* mask; } ;
struct flow_match_eth_addrs {TYPE_4__* key; TYPE_3__* mask; } ;
struct flow_match_basic {TYPE_6__* key; TYPE_5__* mask; } ;
struct flow_dissector {int used_keys; } ;
struct TYPE_11__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {int /*<<< orphan*/  cookie; TYPE_2__ common; } ;
struct TYPE_18__ {int /*<<< orphan*/  vlan_priority; } ;
struct TYPE_16__ {scalar_t__ vlan_priority; } ;
struct TYPE_15__ {int /*<<< orphan*/  n_proto; } ;
struct TYPE_14__ {scalar_t__ n_proto; } ;
struct TYPE_13__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct TYPE_12__ {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ ETHER_TYPE_FULL_MASK ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_BASIC ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_CONTROL ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_ETH_ADDRS ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_VLAN ; 
 int /*<<< orphan*/  IGB_FILTER_FLAG_DST_MAC_ADDR ; 
 int /*<<< orphan*/  IGB_FILTER_FLAG_ETHER_TYPE ; 
 int /*<<< orphan*/  IGB_FILTER_FLAG_SRC_MAC_ADDR ; 
 int /*<<< orphan*/  IGB_FILTER_FLAG_VLAN_TCI ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 scalar_t__ VLAN_PRIO_FULL_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct flow_rule* FUNC3 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC4 (struct flow_rule*,struct flow_match_basic*) ; 
 int /*<<< orphan*/  FUNC5 (struct flow_rule*,struct flow_match_eth_addrs*) ; 
 scalar_t__ FUNC6 (struct flow_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct flow_rule*,struct flow_match_vlan*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct igb_adapter *adapter,
				struct flow_cls_offload *f,
				int traffic_class,
				struct igb_nfc_filter *input)
{
	struct flow_rule *rule = FUNC3(f);
	struct flow_dissector *dissector = rule->match.dissector;
	struct netlink_ext_ack *extack = f->common.extack;

	if (dissector->used_keys &
	    ~(FUNC0(FLOW_DISSECTOR_KEY_BASIC) |
	      FUNC0(FLOW_DISSECTOR_KEY_CONTROL) |
	      FUNC0(FLOW_DISSECTOR_KEY_ETH_ADDRS) |
	      FUNC0(FLOW_DISSECTOR_KEY_VLAN))) {
		FUNC1(extack,
				   "Unsupported key used, only BASIC, CONTROL, ETH_ADDRS and VLAN are supported");
		return -EOPNOTSUPP;
	}

	if (FUNC6(rule, FLOW_DISSECTOR_KEY_ETH_ADDRS)) {
		struct flow_match_eth_addrs match;

		FUNC5(rule, &match);
		if (!FUNC9(match.mask->dst)) {
			if (!FUNC8(match.mask->dst)) {
				FUNC1(extack, "Only full masks are supported for destination MAC address");
				return -EINVAL;
			}

			input->filter.match_flags |=
				IGB_FILTER_FLAG_DST_MAC_ADDR;
			FUNC2(input->filter.dst_addr, match.key->dst);
		}

		if (!FUNC9(match.mask->src)) {
			if (!FUNC8(match.mask->src)) {
				FUNC1(extack, "Only full masks are supported for source MAC address");
				return -EINVAL;
			}

			input->filter.match_flags |=
				IGB_FILTER_FLAG_SRC_MAC_ADDR;
			FUNC2(input->filter.src_addr, match.key->src);
		}
	}

	if (FUNC6(rule, FLOW_DISSECTOR_KEY_BASIC)) {
		struct flow_match_basic match;

		FUNC4(rule, &match);
		if (match.mask->n_proto) {
			if (match.mask->n_proto != ETHER_TYPE_FULL_MASK) {
				FUNC1(extack, "Only full mask is supported for EtherType filter");
				return -EINVAL;
			}

			input->filter.match_flags |= IGB_FILTER_FLAG_ETHER_TYPE;
			input->filter.etype = match.key->n_proto;
		}
	}

	if (FUNC6(rule, FLOW_DISSECTOR_KEY_VLAN)) {
		struct flow_match_vlan match;

		FUNC7(rule, &match);
		if (match.mask->vlan_priority) {
			if (match.mask->vlan_priority != VLAN_PRIO_FULL_MASK) {
				FUNC1(extack, "Only full mask is supported for VLAN priority");
				return -EINVAL;
			}

			input->filter.match_flags |= IGB_FILTER_FLAG_VLAN_TCI;
			input->filter.vlan_tci = match.key->vlan_priority;
		}
	}

	input->action = traffic_class;
	input->cookie = f->cookie;

	return 0;
}
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
struct net_device {int dummy; } ;
struct TYPE_5__ {struct flow_dissector* dissector; } ;
struct flow_rule {TYPE_1__ match; } ;
struct flow_match_ip {TYPE_4__* mask; } ;
struct flow_match_basic {TYPE_3__* mask; TYPE_2__* key; } ;
struct flow_dissector {int used_keys; } ;
struct flow_cls_offload {int dummy; } ;
struct TYPE_8__ {scalar_t__ ttl; } ;
struct TYPE_7__ {int /*<<< orphan*/  n_proto; } ;
struct TYPE_6__ {int /*<<< orphan*/  n_proto; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ ETH_P_IP ; 
 scalar_t__ ETH_P_IPV6 ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_BASIC ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_CONTROL ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_ENC_KEYID ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_IP ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_IPV4_ADDRS ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_IPV6_ADDRS ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_PORTS ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_VLAN ; 
 struct flow_rule* FUNC1 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_rule*,struct flow_match_basic*) ; 
 int /*<<< orphan*/  FUNC3 (struct flow_rule*,struct flow_match_ip*) ; 
 scalar_t__ FUNC4 (struct flow_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev,
				     struct flow_cls_offload *cls)
{
	struct flow_rule *rule = FUNC1(cls);
	struct flow_dissector *dissector = rule->match.dissector;
	u16 ethtype_mask = 0;
	u16 ethtype_key = 0;

	if (dissector->used_keys &
	    ~(FUNC0(FLOW_DISSECTOR_KEY_CONTROL) |
	      FUNC0(FLOW_DISSECTOR_KEY_BASIC) |
	      FUNC0(FLOW_DISSECTOR_KEY_IPV4_ADDRS) |
	      FUNC0(FLOW_DISSECTOR_KEY_IPV6_ADDRS) |
	      FUNC0(FLOW_DISSECTOR_KEY_PORTS) |
	      FUNC0(FLOW_DISSECTOR_KEY_ENC_KEYID) |
	      FUNC0(FLOW_DISSECTOR_KEY_VLAN) |
	      FUNC0(FLOW_DISSECTOR_KEY_IP))) {
		FUNC6(dev, "Unsupported key used: 0x%x\n",
			    dissector->used_keys);
		return -EOPNOTSUPP;
	}

	if (FUNC4(rule, FLOW_DISSECTOR_KEY_BASIC)) {
		struct flow_match_basic match;

		FUNC2(rule, &match);
		ethtype_key = FUNC7(match.key->n_proto);
		ethtype_mask = FUNC7(match.mask->n_proto);
	}

	if (FUNC4(rule, FLOW_DISSECTOR_KEY_IP)) {
		u16 eth_ip_type = ethtype_key & ethtype_mask;
		struct flow_match_ip match;

		if (eth_ip_type != ETH_P_IP && eth_ip_type != ETH_P_IPV6) {
			FUNC5(dev, "IP Key supported only with IPv4/v6");
			return -EINVAL;
		}

		FUNC3(rule, &match);
		if (match.mask->ttl) {
			FUNC6(dev, "ttl match unsupported for offload");
			return -EOPNOTSUPP;
		}
	}

	return 0;
}
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
typedef  scalar_t__ u8 ;
struct qede_dev {int dummy; } ;
struct qede_arfs_tuple {int dummy; } ;
struct TYPE_3__ {struct flow_dissector* dissector; } ;
struct flow_rule {TYPE_1__ match; } ;
struct flow_match_basic {TYPE_2__* key; } ;
struct flow_dissector {int used_keys; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {scalar_t__ ip_proto; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*,char*,...) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EPROTONOSUPPORT ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_BASIC ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_CONTROL ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_IPV4_ADDRS ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_IPV6_ADDRS ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_PORTS ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 int /*<<< orphan*/  FUNC2 (struct flow_rule*,struct flow_match_basic*) ; 
 scalar_t__ FUNC3 (struct flow_rule*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qede_arfs_tuple*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct qede_dev*,struct flow_rule*,struct qede_arfs_tuple*) ; 
 int FUNC7 (struct qede_dev*,struct flow_rule*,struct qede_arfs_tuple*) ; 
 int FUNC8 (struct qede_dev*,struct flow_rule*,struct qede_arfs_tuple*) ; 
 int FUNC9 (struct qede_dev*,struct flow_rule*,struct qede_arfs_tuple*) ; 

__attribute__((used)) static int
FUNC10(struct qede_dev *edev, __be16 proto,
		     struct flow_rule *rule, struct qede_arfs_tuple *tuple)
{
	struct flow_dissector *dissector = rule->match.dissector;
	int rc = -EINVAL;
	u8 ip_proto = 0;

	FUNC5(tuple, 0, sizeof(*tuple));

	if (dissector->used_keys &
	    ~(FUNC0(FLOW_DISSECTOR_KEY_CONTROL) |
	      FUNC0(FLOW_DISSECTOR_KEY_IPV4_ADDRS) |
	      FUNC0(FLOW_DISSECTOR_KEY_BASIC) |
	      FUNC0(FLOW_DISSECTOR_KEY_IPV6_ADDRS) |
	      FUNC0(FLOW_DISSECTOR_KEY_PORTS))) {
		FUNC1(edev, "Unsupported key set:0x%x\n",
			  dissector->used_keys);
		return -EOPNOTSUPP;
	}

	if (proto != FUNC4(ETH_P_IP) &&
	    proto != FUNC4(ETH_P_IPV6)) {
		FUNC1(edev, "Unsupported proto=0x%x\n", proto);
		return -EPROTONOSUPPORT;
	}

	if (FUNC3(rule, FLOW_DISSECTOR_KEY_BASIC)) {
		struct flow_match_basic match;

		FUNC2(rule, &match);
		ip_proto = match.key->ip_proto;
	}

	if (ip_proto == IPPROTO_TCP && proto == FUNC4(ETH_P_IP))
		rc = FUNC6(edev, rule, tuple);
	else if (ip_proto == IPPROTO_TCP && proto == FUNC4(ETH_P_IPV6))
		rc = FUNC7(edev, rule, tuple);
	else if (ip_proto == IPPROTO_UDP && proto == FUNC4(ETH_P_IP))
		rc = FUNC8(edev, rule, tuple);
	else if (ip_proto == IPPROTO_UDP && proto == FUNC4(ETH_P_IPV6))
		rc = FUNC9(edev, rule, tuple);
	else
		FUNC1(edev, "Invalid protocol request\n");

	return rc;
}
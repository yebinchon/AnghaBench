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
struct qede_dev {int dummy; } ;
struct qede_arfs_tuple {int /*<<< orphan*/  dst_ipv6; int /*<<< orphan*/  src_ipv6; } ;
struct in6_addr {int dummy; } ;
struct flow_rule {int dummy; } ;
struct flow_match_ipv6_addrs {TYPE_2__* key; TYPE_1__* mask; } ;
typedef  int /*<<< orphan*/  addr ;
struct TYPE_4__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_3__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FLOW_DISSECTOR_KEY_IPV6_ADDRS ; 
 int /*<<< orphan*/  FUNC1 (struct flow_rule*,struct flow_match_ipv6_addrs*) ; 
 scalar_t__ FUNC2 (struct flow_rule*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct in6_addr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct in6_addr*,int,int) ; 
 scalar_t__ FUNC6 (struct qede_dev*,struct flow_rule*,struct qede_arfs_tuple*) ; 
 int FUNC7 (struct qede_dev*,struct qede_arfs_tuple*,struct in6_addr*) ; 

__attribute__((used)) static int
FUNC8(struct qede_dev *edev, struct flow_rule *rule,
			  struct qede_arfs_tuple *t)
{
	struct in6_addr zero_addr, addr;

	FUNC5(&zero_addr, 0, sizeof(addr));
	FUNC5(&addr, 0xff, sizeof(addr));

	if (FUNC2(rule, FLOW_DISSECTOR_KEY_IPV6_ADDRS)) {
		struct flow_match_ipv6_addrs match;

		FUNC1(rule, &match);
		if ((FUNC3(&match.key->src, &zero_addr, sizeof(addr)) &&
		     FUNC3(&match.mask->src, &addr, sizeof(addr))) ||
		    (FUNC3(&match.key->dst, &zero_addr, sizeof(addr)) &&
		     FUNC3(&match.mask->dst, &addr, sizeof(addr)))) {
			FUNC0(edev,
				  "Do not support IPv6 address prefix/mask\n");
			return -EINVAL;
		}

		FUNC4(&t->src_ipv6, &match.key->src, sizeof(addr));
		FUNC4(&t->dst_ipv6, &match.key->dst, sizeof(addr));
	}

	if (FUNC6(edev, rule, t))
		return -EINVAL;

	return FUNC7(edev, t, &zero_addr);
}
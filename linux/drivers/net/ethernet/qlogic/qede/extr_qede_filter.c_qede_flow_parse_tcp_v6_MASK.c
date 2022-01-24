#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qede_dev {int dummy; } ;
struct qede_arfs_tuple {int /*<<< orphan*/  eth_proto; int /*<<< orphan*/  ip_proto; } ;
struct flow_rule {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qede_dev*,struct flow_rule*,struct qede_arfs_tuple*) ; 

__attribute__((used)) static int
FUNC2(struct qede_dev *edev, struct flow_rule *rule,
		     struct qede_arfs_tuple *tuple)
{
	tuple->ip_proto = IPPROTO_TCP;
	tuple->eth_proto = FUNC0(ETH_P_IPV6);

	return FUNC1(edev, rule, tuple);
}
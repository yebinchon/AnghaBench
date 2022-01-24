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
struct qede_arfs_tuple {int /*<<< orphan*/  build_hdr; int /*<<< orphan*/  ip_comp; int /*<<< orphan*/  mode; int /*<<< orphan*/  src_ipv6; int /*<<< orphan*/  dst_ipv6; scalar_t__ dst_port; scalar_t__ src_port; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  QED_FILTER_CONFIG_MODE_5_TUPLE ; 
 int /*<<< orphan*/  QED_FILTER_CONFIG_MODE_IP_DEST ; 
 int /*<<< orphan*/  QED_FILTER_CONFIG_MODE_IP_SRC ; 
 int /*<<< orphan*/  QED_FILTER_CONFIG_MODE_L4_PORT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct in6_addr*,int) ; 
 int /*<<< orphan*/  qede_flow_build_ipv6_hdr ; 
 int /*<<< orphan*/  qede_flow_spec_ipv6_cmp ; 

__attribute__((used)) static int FUNC2(struct qede_dev *edev,
					struct qede_arfs_tuple *t,
					struct in6_addr *zaddr)
{
	/* We must have Only 4-tuples/l4 port/src ip/dst ip
	 * as an input.
	 */
	if (t->src_port && t->dst_port &&
	    FUNC1(&t->src_ipv6, zaddr, sizeof(struct in6_addr)) &&
	    FUNC1(&t->dst_ipv6, zaddr, sizeof(struct in6_addr))) {
		t->mode = QED_FILTER_CONFIG_MODE_5_TUPLE;
	} else if (!t->src_port && t->dst_port &&
		   !FUNC1(&t->src_ipv6, zaddr, sizeof(struct in6_addr)) &&
		   !FUNC1(&t->dst_ipv6, zaddr, sizeof(struct in6_addr))) {
		t->mode = QED_FILTER_CONFIG_MODE_L4_PORT;
	} else if (!t->src_port && !t->dst_port &&
		   !FUNC1(&t->dst_ipv6, zaddr, sizeof(struct in6_addr)) &&
		   FUNC1(&t->src_ipv6, zaddr, sizeof(struct in6_addr))) {
		t->mode = QED_FILTER_CONFIG_MODE_IP_SRC;
	} else if (!t->src_port && !t->dst_port &&
		   FUNC1(&t->dst_ipv6, zaddr, sizeof(struct in6_addr)) &&
		   !FUNC1(&t->src_ipv6, zaddr, sizeof(struct in6_addr))) {
		t->mode = QED_FILTER_CONFIG_MODE_IP_DEST;
	} else {
		FUNC0(edev, "Invalid N-tuple\n");
		return -EOPNOTSUPP;
	}

	t->ip_comp = qede_flow_spec_ipv6_cmp;
	t->build_hdr = qede_flow_build_ipv6_hdr;

	return 0;
}
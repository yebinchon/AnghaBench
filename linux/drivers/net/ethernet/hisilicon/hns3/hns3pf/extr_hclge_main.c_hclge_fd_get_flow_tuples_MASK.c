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
struct hclge_fd_rule_tuples {void** dst_ip; void** src_ip; void* dst_port; int /*<<< orphan*/  ip_proto; void* ether_proto; } ;
struct TYPE_15__ {int /*<<< orphan*/  u6_addr32; } ;
struct TYPE_16__ {TYPE_6__ in6_u; } ;
struct TYPE_13__ {int /*<<< orphan*/  u6_addr32; } ;
struct TYPE_14__ {TYPE_4__ in6_u; } ;
struct TYPE_17__ {TYPE_7__ dst; TYPE_5__ src; } ;
struct TYPE_12__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_18__ {TYPE_8__ v6addrs; TYPE_3__ v4addrs; } ;
struct TYPE_11__ {scalar_t__ n_proto; int /*<<< orphan*/  ip_proto; } ;
struct TYPE_10__ {scalar_t__ dst; } ;
struct flow_keys {TYPE_9__ addrs; TYPE_2__ basic; TYPE_1__ ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 void* FUNC0 (scalar_t__) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(const struct flow_keys *fkeys,
				     struct hclge_fd_rule_tuples *tuples)
{
	tuples->ether_proto = FUNC0(fkeys->basic.n_proto);
	tuples->ip_proto = fkeys->basic.ip_proto;
	tuples->dst_port = FUNC0(fkeys->ports.dst);

	if (fkeys->basic.n_proto == FUNC2(ETH_P_IP)) {
		tuples->src_ip[3] = FUNC1(fkeys->addrs.v4addrs.src);
		tuples->dst_ip[3] = FUNC1(fkeys->addrs.v4addrs.dst);
	} else {
		FUNC3(tuples->src_ip,
		       fkeys->addrs.v6addrs.src.in6_u.u6_addr32,
		       sizeof(tuples->src_ip));
		FUNC3(tuples->dst_ip,
		       fkeys->addrs.v6addrs.dst.in6_u.u6_addr32,
		       sizeof(tuples->dst_ip));
	}
}
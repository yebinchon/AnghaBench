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
struct nfp_qdisc {struct nfp_qdisc* children; int /*<<< orphan*/  handle; } ;
struct nfp_port {int /*<<< orphan*/  tc_offload_cnt; } ;
struct nfp_abm_link {int /*<<< orphan*/  qdiscs; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct nfp_abm_link*,struct nfp_qdisc*) ; 
 struct nfp_port* FUNC4 (struct net_device*) ; 
 struct nfp_qdisc* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct net_device *netdev, struct nfp_abm_link *alink,
		   struct nfp_qdisc *qdisc)
{
	struct nfp_port *port = FUNC4(netdev);

	if (!qdisc)
		return;
	FUNC3(netdev, alink, qdisc);
	FUNC1(FUNC5(&alink->qdiscs,
				  FUNC0(qdisc->handle)) != qdisc);

	FUNC2(qdisc->children);
	FUNC2(qdisc);

	port->tc_offload_cnt--;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rtnl_link_stats64 {int dummy; } ;
struct nfp_repr {TYPE_1__* port; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int type; } ;

/* Variables and functions */
#define  NFP_PORT_PF_PORT 130 
#define  NFP_PORT_PHYS_PORT 129 
#define  NFP_PORT_VF_PORT 128 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct nfp_repr* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct rtnl_link_stats64*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct rtnl_link_stats64*) ; 

__attribute__((used)) static void
FUNC5(struct net_device *netdev, struct rtnl_link_stats64 *stats)
{
	struct nfp_repr *repr = FUNC2(netdev);

	if (FUNC0(!repr->port))
		return;

	switch (repr->port->type) {
	case NFP_PORT_PHYS_PORT:
		if (!FUNC1(repr->port))
			break;
		FUNC3(repr->port, stats);
		break;
	case NFP_PORT_PF_PORT:
	case NFP_PORT_VF_PORT:
		FUNC4(repr->port, stats);
	default:
		break;
	}
}
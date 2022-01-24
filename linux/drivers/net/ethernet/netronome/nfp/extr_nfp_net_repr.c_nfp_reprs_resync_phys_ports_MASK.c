#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfp_reprs {int num_reprs; int /*<<< orphan*/ * reprs; } ;
struct nfp_repr {TYPE_1__* port; } ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ NFP_PORT_INVALID ; 
 int /*<<< orphan*/  NFP_REPR_TYPE_PHYS_PORT ; 
 struct nfp_repr* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_app*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_repr*) ; 
 struct net_device* FUNC3 (struct nfp_app*,struct nfp_reprs*,int) ; 
 struct nfp_reprs* FUNC4 (struct nfp_app*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(struct nfp_app *app)
{
	struct net_device *netdev;
	struct nfp_reprs *reprs;
	struct nfp_repr *repr;
	int i;

	reprs = FUNC4(app, NFP_REPR_TYPE_PHYS_PORT);
	if (!reprs)
		return 0;

	for (i = 0; i < reprs->num_reprs; i++) {
		netdev = FUNC3(app, reprs, i);
		if (!netdev)
			continue;

		repr = FUNC0(netdev);
		if (repr->port->type != NFP_PORT_INVALID)
			continue;

		FUNC1(app, netdev);
		FUNC6();
		FUNC5(reprs->reprs[i], NULL);
		FUNC7();
		FUNC8();
		FUNC2(repr);
	}

	return 0;
}
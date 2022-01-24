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
struct nfp_reprs {unsigned int num_reprs; int /*<<< orphan*/ * reprs; } ;
struct nfp_net {struct nfp_app* app; } ;
struct nfp_app {int /*<<< orphan*/ * reprs; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 unsigned int __NFP_REPR_TYPE_MAX ; 
 struct nfp_net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct net_device*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct nfp_app *app, struct net_device *netdev)
{
	struct nfp_net *nn;
	unsigned int type;

	if (!FUNC1(netdev))
		return;
	nn = FUNC0(netdev);
	if (nn->app != app)
		return;

	for (type = 0; type < __NFP_REPR_TYPE_MAX; type++) {
		struct nfp_reprs *reprs;
		unsigned int i;

		reprs = FUNC3(app->reprs[type]);
		if (!reprs)
			continue;

		for (i = 0; i < reprs->num_reprs; i++) {
			struct net_device *repr;

			repr = FUNC3(reprs->reprs[i]);
			if (!repr)
				continue;

			FUNC2(repr, netdev);
		}
	}
}
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
struct nfp_reprs {int num_reprs; } ;
struct nfp_app {TYPE_1__* pf; int /*<<< orphan*/ * reprs; } ;
struct net_device {int dummy; } ;
typedef  enum nfp_repr_type { ____Placeholder_nfp_repr_type } nfp_repr_type ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_app*,struct net_device*) ; 
 struct nfp_reprs* FUNC2 (struct nfp_app*,int,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (struct nfp_app*,struct nfp_reprs*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_app*,struct nfp_reprs*) ; 
 struct nfp_reprs* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(struct nfp_app *app, enum nfp_repr_type type)
{
	struct net_device *netdev;
	struct nfp_reprs *reprs;
	int i;

	reprs = FUNC5(app->reprs[type],
					  FUNC0(&app->pf->lock));
	if (!reprs)
		return;

	/* Preclean must happen before we remove the reprs reference from the
	 * app below.
	 */
	for (i = 0; i < reprs->num_reprs; i++) {
		netdev = FUNC3(app, reprs, i);
		if (netdev)
			FUNC1(app, netdev);
	}

	reprs = FUNC2(app, type, NULL);

	FUNC6();
	FUNC4(app, reprs);
}
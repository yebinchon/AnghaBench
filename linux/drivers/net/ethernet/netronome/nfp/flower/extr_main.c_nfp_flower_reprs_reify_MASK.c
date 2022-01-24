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
struct nfp_repr {int dummy; } ;
struct nfp_app {TYPE_1__* pf; int /*<<< orphan*/ * reprs; } ;
struct net_device {int dummy; } ;
typedef  enum nfp_repr_type { ____Placeholder_nfp_repr_type } nfp_repr_type ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nfp_repr* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct nfp_repr*,int) ; 
 struct net_device* FUNC3 (struct nfp_app*,struct nfp_reprs*,int) ; 
 struct nfp_reprs* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct nfp_app *app, enum nfp_repr_type type,
		       bool exists)
{
	struct nfp_reprs *reprs;
	int i, err, count = 0;

	reprs = FUNC4(app->reprs[type],
					  FUNC0(&app->pf->lock));
	if (!reprs)
		return 0;

	for (i = 0; i < reprs->num_reprs; i++) {
		struct net_device *netdev;

		netdev = FUNC3(app, reprs, i);
		if (netdev) {
			struct nfp_repr *repr = FUNC1(netdev);

			err = FUNC2(repr, exists);
			if (err)
				return err;
			count++;
		}
	}

	return count;
}
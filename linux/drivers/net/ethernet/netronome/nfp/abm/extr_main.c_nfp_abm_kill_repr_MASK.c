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
struct nfp_reprs {int /*<<< orphan*/ * reprs; } ;
struct nfp_repr {int dummy; } ;
struct nfp_app {int dummy; } ;
struct nfp_abm_link {size_t id; } ;
struct net_device {int dummy; } ;
typedef  enum nfp_repr_type { ____Placeholder_nfp_repr_type } nfp_repr_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_repr*) ; 
 struct net_device* FUNC2 (struct nfp_app*,struct nfp_reprs*,size_t) ; 
 struct nfp_reprs* FUNC3 (struct nfp_app*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(struct nfp_app *app, struct nfp_abm_link *alink,
		  enum nfp_repr_type rtype)
{
	struct net_device *netdev;
	struct nfp_reprs *reprs;

	reprs = FUNC3(app, rtype);
	netdev = FUNC2(app, reprs, alink->id);
	if (!netdev)
		return;
	FUNC5();
	FUNC4(reprs->reprs[alink->id], NULL);
	FUNC6();
	FUNC7();
	/* Cast to make sure nfp_repr_clean_and_free() takes a nfp_repr */
	FUNC1((struct nfp_repr *)FUNC0(netdev));
}
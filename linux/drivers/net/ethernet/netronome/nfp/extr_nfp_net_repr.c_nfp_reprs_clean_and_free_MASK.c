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
struct nfp_reprs {unsigned int num_reprs; } ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfp_reprs*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC3 (struct nfp_app*,struct nfp_reprs*,unsigned int) ; 

void FUNC4(struct nfp_app *app, struct nfp_reprs *reprs)
{
	struct net_device *netdev;
	unsigned int i;

	for (i = 0; i < reprs->num_reprs; i++) {
		netdev = FUNC3(app, reprs, i);
		if (netdev)
			FUNC2(FUNC1(netdev));
	}

	FUNC0(reprs);
}
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
struct net_device {int dummy; } ;
struct neighbour {int nud_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  ha; int /*<<< orphan*/  dead; } ;
struct neigh_table {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 scalar_t__ FUNC0 (struct neighbour*) ; 
 int NUD_VALID ; 
 int FUNC1 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct neighbour* FUNC3 (struct neigh_table*,void const*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct neighbour*,int /*<<< orphan*/ *) ; 
 struct neighbour* FUNC5 (struct neigh_table*,void const*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct neighbour*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct neigh_table *tbl,
			      const void *pkey,
			      struct net_device *dev,
			      unsigned char dmac[ETH_ALEN])
{
	struct neighbour *neigh = FUNC5(tbl, pkey, dev);
	int err = 0;

	if (!neigh) {
		neigh = FUNC3(tbl, pkey, dev);
		if (FUNC0(neigh))
			return FUNC1(neigh);
	}

	FUNC4(neigh, NULL);

	FUNC7(&neigh->lock);
	if ((neigh->nud_state & NUD_VALID) && !neigh->dead)
		FUNC2(dmac, neigh->ha, ETH_ALEN);
	else
		err = -ENOENT;
	FUNC8(&neigh->lock);

	FUNC6(neigh);
	return err;
}
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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct niu_link_config {int active_speed; int /*<<< orphan*/  active_duplex; } ;
struct niu {int /*<<< orphan*/  lock; int /*<<< orphan*/  phy_addr; struct niu_link_config link_config; } ;

/* Variables and functions */
 int BMSR_LSTATUS ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  DUPLEX_INVALID ; 
 int /*<<< orphan*/  MII_BMSR ; 
 int SPEED_1000 ; 
 int SPEED_INVALID ; 
 int FUNC0 (struct niu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct niu *np, int *link_up_p)
{
	struct niu_link_config *lp = &np->link_config;
	u16 current_speed, bmsr;
	unsigned long flags;
	u8 current_duplex;
	int err, link_up;

	link_up = 0;
	current_speed = SPEED_INVALID;
	current_duplex = DUPLEX_INVALID;

	FUNC1(&np->lock, flags);

	err = FUNC0(np, np->phy_addr, MII_BMSR);
	if (err < 0)
		goto out;

	bmsr = err;
	if (bmsr & BMSR_LSTATUS) {
		link_up = 1;
		current_speed = SPEED_1000;
		current_duplex = DUPLEX_FULL;
	}
	lp->active_speed = current_speed;
	lp->active_duplex = current_duplex;
	err = 0;

out:
	FUNC2(&np->lock, flags);

	*link_up_p = link_up;
	return err;
}
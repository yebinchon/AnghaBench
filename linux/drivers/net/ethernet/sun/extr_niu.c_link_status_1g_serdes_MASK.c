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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct niu_link_config {int /*<<< orphan*/  active_duplex; int /*<<< orphan*/  active_speed; } ;
struct niu {int /*<<< orphan*/  lock; struct niu_link_config link_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  DUPLEX_INVALID ; 
 int /*<<< orphan*/  PCS_MII_STAT ; 
 int PCS_MII_STAT_LINK_STATUS ; 
 int /*<<< orphan*/  SPEED_1000 ; 
 int /*<<< orphan*/  SPEED_INVALID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct niu *np, int *link_up_p)
{
	struct niu_link_config *lp = &np->link_config;
	int link_up;
	u64 val;
	u16 current_speed;
	unsigned long flags;
	u8 current_duplex;

	link_up = 0;
	current_speed = SPEED_INVALID;
	current_duplex = DUPLEX_INVALID;

	FUNC1(&np->lock, flags);

	val = FUNC0(PCS_MII_STAT);

	if (val & PCS_MII_STAT_LINK_STATUS) {
		link_up = 1;
		current_speed = SPEED_1000;
		current_duplex = DUPLEX_FULL;
	}

	lp->active_speed = current_speed;
	lp->active_duplex = current_duplex;
	FUNC2(&np->lock, flags);

	*link_up_p = link_up;
	return 0;
}
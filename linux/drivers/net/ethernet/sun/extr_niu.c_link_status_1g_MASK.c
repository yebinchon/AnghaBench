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
struct niu_link_config {int /*<<< orphan*/  active_advertising; int /*<<< orphan*/  supported; } ;
struct niu {int /*<<< orphan*/  lock; struct niu_link_config link_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADVERTISED_TP ; 
 int /*<<< orphan*/  SUPPORTED_TP ; 
 int FUNC0 (struct niu*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct niu *np, int *link_up_p)
{
	struct niu_link_config *lp = &np->link_config;
	unsigned long flags;
	int err;

	FUNC1(&np->lock, flags);

	err = FUNC0(np, link_up_p);
	lp->supported |= SUPPORTED_TP;
	lp->active_advertising |= ADVERTISED_TP;

	FUNC2(&np->lock, flags);
	return err;
}